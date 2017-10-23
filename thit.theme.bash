#!/usr/bin/env bash

SCM_THEME_PROMPT_DIRTY=" 🔥 "
SCM_THEME_PROMPT_CLEAN=" 😎 "
SCM_THEME_PROMPT_PREFIX=" ${green}"
SCM_THEME_PROMPT_SUFFIX="${green}"

GIT_THEME_PROMPT_DIRTY=" 🔥 ️"
GIT_THEME_PROMPT_CLEAN=" 😎 "
GIT_THEME_PROMPT_PREFIX=" ${green}"
GIT_THEME_PROMPT_SUFFIX="${green}"

RVM_THEME_PROMPT_PREFIX="|"
RVM_THEME_PROMPT_SUFFIX="|"

__bobby_clock() {
  printf "$(clock_prompt) "

  if [ "${THEME_SHOW_CLOCK_CHAR}" == "true" ]; then
    printf "$(clock_char) "
  fi
}

function prompt_command() {
    PS1="\n$(__bobby_clock)${blue}\u\$ ${green}in ${underline_orange}\w${normal} $(scm_prompt_char_info)${bold_white}❕${normal} "
}

THEME_SHOW_CLOCK_CHAR="false"
THEME_CLOCK_CHAR_COLOR=${THEME_CLOCK_CHAR_COLOR:-"$red"}
THEME_CLOCK_COLOR="${red}"
THEME_CLOCK_FORMAT="%h %d \@"

safe_append_prompt_command prompt_command
