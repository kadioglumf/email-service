package com.kadioglumf.email.service.template;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public class Context {
    private final String template;
    private final Map<String, Object> variables;

    public Context() {
        this((String) null, (Map)null);
    }

    public Context(String template) {
        this(template, (Map)null);
    }

    public Context(String template, Map<String, Object> variables) {
        this.template = template;
        this.variables = variables == null ? new LinkedHashMap(10) : new LinkedHashMap(variables);
    }

    public final String getTemplate() {
        return this.template;
    }

    public final boolean containsVariable(String name) {
        return this.variables.containsKey(name);
    }

    public final Map<String, Object> getVariables() {
        return this.variables;
    }

    public final Set<String> getVariableNames() {
        return this.variables.keySet();
    }

    public final Object getVariable(String name) {
        return this.variables.get(name);
    }

    public void setVariable(String name, Object value) {
        this.variables.put(name, value);
    }

    public void setVariables(Map<String, Object> variables) {
        if (variables != null) {
            this.variables.putAll(variables);
        }
    }

    public void removeVariable(String name) {
        this.variables.remove(name);
    }

    public void clearVariables() {
        this.variables.clear();
    }
}
