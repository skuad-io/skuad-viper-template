#!/usr/bin/env ruby

require 'fileutils'
require './generator'
require './parameters'

PATH = "VIPER Templates"
RESOURCES = "Resources"


def generate_xib(template, protocol, complexity, source_folder, destination_folder)
    return unless protocol.generate_xib
    generator = Generator.new("#{source_folder}/___FILEBASENAME___ViewController.xib.erb", template, protocol, complexity)
    generator.save "#{destination_folder}/___FILEBASENAME___ViewController.xib"
end

def generate_sb(template, protocol, complexity, source_folder, destination_folder)
    return unless protocol.generate_sb
    generator = Generator.new("#{source_folder}/___FILEBASENAME___.storyboard.erb", template, protocol, complexity)
    generator.save "#{destination_folder}/___FILEBASENAME___.storyboard"
end

def generate_protocols(template, protocol, complexity, source_folder, destination_folder)
    generator = Generator.new("#{source_folder}/___FILEBASENAME___protocols.swift.erb", template, protocol, complexity)
    generator.save "#{destination_folder}/___FILEBASENAME___protocols.swift"
end

def generate_wireframe(template, protocol, complexity, source_folder, destination_folder)
    generator = Generator.new("#{source_folder}/___FILEBASENAME___Wireframe.swift.erb", template, protocol, complexity)
    generator.save "#{destination_folder}/___FILEBASENAME___Wireframe.swift"
end

def generate_presenter(template, protocol, complexity, source_folder, destination_folder)
    generator = Generator.new("#{source_folder}/___FILEBASENAME___Presenter.swift.erb", template, protocol, complexity)
    generator.save "#{destination_folder}/___FILEBASENAME___Presenter.swift"
end

def generate_interactor(template, protocol, complexity, source_folder, destination_folder)
    return unless complexity.generate_interactor
    generator = Generator.new("#{source_folder}/___FILEBASENAME___Interactor.swift.erb", template, protocol, complexity)
    generator.save "#{destination_folder}/___FILEBASENAME___Interactor.swift"
end

def generate_formatter(template, protocol, complexity, source_folder, destination_folder)
    return unless complexity.generate_formatter
    generator = Generator.new("#{source_folder}/___FILEBASENAME___Formatter.swift.erb", template, protocol, complexity)
    generator.save "#{destination_folder}/___FILEBASENAME___Formatter.swift"
end

def generate_view(template, protocol, complexity, source_folder, destination_folder)
    generator = Generator.new("#{source_folder}/___FILEBASENAME___ViewController.swift.erb", template, protocol, complexity)
    generator.save "#{destination_folder}/___FILEBASENAME___ViewController.swift"
end

def generate(template, protocol, complexity)
    source_folder = "#{RESOURCES}/Templates"
    destination_folder = "#{PATH}/#{template.name}.xctemplate/#{protocol.name}#{complexity.name}"
    generate_xib(template, protocol, complexity, source_folder, destination_folder)
    generate_sb(template, protocol, complexity, source_folder, destination_folder)
    generate_protocols(template, protocol, complexity, source_folder, destination_folder)
    generate_wireframe(template, protocol, complexity, source_folder, destination_folder)
    generate_presenter(template, protocol, complexity, source_folder, destination_folder)
    generate_interactor(template, protocol, complexity, source_folder, destination_folder)
    generate_formatter(template, protocol, complexity, source_folder, destination_folder)
    generate_view(template, protocol, complexity, source_folder, destination_folder)
end

def generate_info_plist(template)
    generator = Generator.new("#{RESOURCES}/TemplateInfo.plist.erb", template, Protocol, Complexity)
    generator.save "#{PATH}/#{template.name}.xctemplate/TemplateInfo.plist"
end

def copy_images(template)
    source = "#{RESOURCES}/Images/."
    destination = "#{PATH}/#{template.name}.xctemplate"
    FileUtils.cp_r source, destination
end

Template.types.each do |template|
    generate_info_plist template
    copy_images template
    
    Protocol.types.each do |protocol|
        Complexity.types.each do |complexity|

            generate(template, protocol, complexity)

        end
    end
end