require 'rubygems'
require "xmlsimple"
require "plugin"

class Feature

  def initialize(xml_text)
    @featureXML = XmlSimple.xml_in(xml_text)
  end

  def id
    @featureXML['id']
  end

  def label
    @featureXML['label']
  end

  def version
    @featureXML['version']
  end

  def required_plugins
    @featureXML['requires'].map do |import_tag|
      import_tag['import'].map { |plugin_tag| RequiredPlugin.new(plugin_tag) }
    end
  end

  def plugins
    @featureXML['plugin'].map { |plugin_tag| Plugin.new(plugin_tag) }
  end
end