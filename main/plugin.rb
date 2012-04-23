
class Plugin
  def initialize(pluginAttr)
    @pluginAttr = pluginAttr
  end

  def id
    @pluginAttr['id']
  end

  def version
    @pluginAttr['version']
  end

  def unpack
    @pluginAttr['unpack']
  end

  def to_s
    "Plugin[id='#{id}' version='#{version}' unpack='#{unpack}']"
  end
end

class RequiredPlugin < Plugin
  def initialize(pluginAttr)
    @pluginAttr = pluginAttr
  end

  def id
    @pluginAttr['plugin']
  end

  def match
    @pluginAttr['match']
  end

  def to_s
    "RequiredPlugin[id='#{id}' version='#{version}' match='#{match}']"
  end
end