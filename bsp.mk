################################################################################
# \file bsp.mk
#
# \brief
# Define the CY8CEVAL-062S2-MUR-4373M2 target.
#
################################################################################
# \copyright
# Copyright 2018-2023 Cypress Semiconductor Corporation (an Infineon company) or
# an affiliate of Cypress Semiconductor Corporation
#
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

ifeq ($(WHICHFILE),true)
$(info Processing $(lastword $(MAKEFILE_LIST)))
endif

# Any additional components to apply when using this board.
# Use a default CM0+ image (CM0P_SLEEP). This can be swapped for a different
# pre-built image or removed if custom built project.
BSP_COMPONENTS:=CM0P_SLEEP WIFI_INTERFACE_SDIO

# Any additional defines to apply when using this board.
# 43732BC does not support default country Australia
BSP_DEFINES:=CY_USING_HAL
BSP_DEFINES+=CY_WIFI_COUNTRY=WHD_COUNTRY_UNITED_STATES

# Ignore the default CYW4373 clm blob. This BSP uses the CLM blob for Murata LBEE5PK2BC M.2 radio module
CY_IGNORE+=$(SEARCH_wifi-host-driver)/WiFi_Host_Driver/resources/clm/COMPONENT_4373/4373A0_clm_blob.c \
           $(SEARCH_wifi-host-driver)/WiFi_Host_Driver/resources/clm/COMPONENT_4373/4373A0-mfgtest_clm_blob.c \
           $(SEARCH_wifi-host-driver)/WiFi_Host_Driver/resources/clm/COMPONENT_4373/clm_resources.h

################################################################################
# ALL ITEMS BELOW THIS POINT ARE AUTO GENERATED BY THE BSP ASSISTANT TOOL.
# DO NOT MODIFY DIRECTLY. CHANGES SHOULD BE MADE THROUGH THE BSP ASSISTANT.
################################################################################

# Board device selection. MPN_LIST tracks what was selected in the BSP Assistant
# All other variables are derived by BSP Assistant based on the MPN_LIST.
MPN_LIST:=CY8C624ABZI-S2D44 LBEE5PK2BC
DEVICE:=CY8C624ABZI-S2D44
ADDITIONAL_DEVICES:=CYW4373IUBGT
DEVICE_COMPONENTS:=4373 CAT1 CAT1A HCI-UART MURATA-2BC PSOC6_02
DEVICE_CY8C624ABZI-S2D44_CORES:=CORE_NAME_CM0P_0 CORE_NAME_CM4_0
DEVICE_CY8C624ABZI-S2D44_DIE:=PSoC6A2M
DEVICE_CY8C624ABZI-S2D44_FEATURES:=CM4_0_FPU_PRESENT
DEVICE_CY8C624ABZI-S2D44_FLASH_KB:=2048
DEVICE_CY8C624ABZI-S2D44_SRAM_KB:=1024
DEVICE_CYW4373IUBGT_DIE:=4373A0A
DEVICE_CYW4373IUBGT_FLASH_KB:=0
DEVICE_CYW4373IUBGT_SRAM_KB:=896
DEVICE_LIST:=CY8C624ABZI-S2D44 CYW4373IUBGT
DEVICE_TOOL_IDS:=bsp-assistant bt-configurator capsense-configurator capsense-tuner device-configurator dfuh-tool library-manager lin-configurator ml-configurator motor-suite-gui project-creator qspi-configurator seglcd-configurator smartio-configurator usbdev-configurator
RECIPE_DIR:=$(SEARCH_recipe-make-cat1a)
