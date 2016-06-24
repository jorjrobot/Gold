(nil, nil, text)
  end

  if #matches == 2 then
    print("Second")
    local target = matches[1]
    local text = matches[2]
    return translate(nil, target, text)
  end

  if #matches == 3 then
    print("Third")
    local source = matches[1]
    local target = matches[2]
    local text = matches[3]
    return translate(source, target, text)
  end

end

return {
  description = "Translate some text", 
  usage = {
    "[/!]tr text. Translate the text to English.",
    "[/!]tra target_lang text.",
    "[/!]tr source.target text",
  },
  patterns = {
    "^. ([%w]+).([%a]+) (.+)",
    "^. ([%w]+) (.+)",
    "^. (.+)",
  }, 
  run = run 
}

end
