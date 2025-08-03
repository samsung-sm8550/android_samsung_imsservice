.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityEvent;
.super Ljava/lang/Object;
.source "CapabilityEvent.java"


# static fields
.field public static final EVT_ADS_CHANGED:I = 0xf

.field public static final EVT_ATTACH_SERVICE_AVAILABILITY_LISTENER:I = 0x32

.field public static final EVT_BOOT_COMPLETED:I = 0xc

.field public static final EVT_CONTACT_CHANGED:I = 0x2

.field public static final EVT_DELAYED_SET_OWN_CAPABILITIES:I = 0x35

.field public static final EVT_DETACH_SERVICE_AVAILABILITY_LISTENER:I = 0x33

.field public static final EVT_EXCHANGE_CAPABILITIES_FOR_VSH:I = 0xe

.field public static final EVT_INITIAL_CAPABILITIES_QUERY:I = 0x3

.field public static final EVT_LAZY_CAPABILITIES_QUERY:I = 0x8

.field public static final EVT_MESSAGEAPP_UPDATED:I = 0x28

.field public static final EVT_NEW_CAPABILITIES_RECEIVED:I = 0x4

.field public static final EVT_NEW_IMS_SETTINGS_AVAILABLE:I = 0x7

.field public static final EVT_OWN_CAPABILITIES_CHANGED:I = 0x9

.field public static final EVT_PERIODIC_POLL:I = 0x12

.field public static final EVT_PERIODIC_POLL_TIMEOUT:I = 0x11

.field public static final EVT_POLL:I = 0x1

.field public static final EVT_REQUEST_CAPABILITIES:I = 0x6

.field public static final EVT_REQUEST_CAPABILITIES_SR:I = 0x36

.field public static final EVT_REQUEST_LIST_CAPABILITIES:I = 0x21

.field public static final EVT_RETRY_SYNC_CONTACT:I = 0xd

.field public static final EVT_SEND_RCSC_INFO_TO_HQM:I = 0x10

.field public static final EVT_SET_OWN_CAPABILITIES:I = 0x5

.field public static final EVT_SYNC_CONTACT:I = 0xa

.field public static final EVT_UPDATE_SERVICE_AVAILABILITY_LISTENER:I = 0x34

.field public static final EVT_USER_SWITCHED:I = 0xb

.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityEvent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static handleEvent(Landroid/os/Message;Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 55
    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x21

    const/4 v13, 0x1

    if-eq v3, v4, :cond_8

    const/16 v4, 0x28

    const/4 v5, 0x0

    if-eq v3, v4, :cond_7

    const/16 v4, 0x1f41

    if-eq v3, v4, :cond_9

    const/16 v4, 0x1f42

    if-eq v3, v4, :cond_9

    const-string v4, "CapabilityEvent"

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    .line 194
    const-string v0, "handleEvent: Undefined message."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 75
    :pswitch_0
    iget v2, v0, Landroid/os/Message;->arg2:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVT_REQUEST_CAPABILITIES: requestId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 77
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_SR_API:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    iget v4, v0, Landroid/os/Message;->arg2:I

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v3

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZII)Z

    goto/16 :goto_3

    .line 190
    :pswitch_1
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->handleDelayedSetOwnCapabilities(I)V

    goto/16 :goto_3

    .line 186
    :pswitch_2
    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->updateServiceAvailabilityEventListener(I)V

    goto/16 :goto_3

    .line 182
    :pswitch_3
    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->detachServiceAvailabilityEventListener(I)V

    goto/16 :goto_3

    .line 178
    :pswitch_4
    iget v1, v0, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->attachServiceAvailabilityEventListener(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 61
    :pswitch_5
    iget v2, v0, Landroid/os/Message;->arg1:I

    if-ne v2, v13, :cond_0

    move v5, v13

    :cond_0
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v13, v5, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->poll(ZZI)V

    goto/16 :goto_3

    .line 65
    :pswitch_6
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->deleteNonRcsDataFromContactDB(I)V

    goto/16 :goto_3

    .line 162
    :pswitch_7
    iget v0, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->sendRCSCInfoToHQM(I)V

    goto/16 :goto_3

    .line 158
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->onAdsChanged()V

    goto/16 :goto_3

    .line 154
    :pswitch_9
    iget v2, v0, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->exchangeCapabilitiesForVSH(IZ)V

    goto/16 :goto_3

    .line 174
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->onRetrySyncContact()V

    goto/16 :goto_3

    .line 170
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->onBootCompleted()V

    goto/16 :goto_3

    :pswitch_c
    move-object/from16 v1, p2

    .line 150
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->onUserSwitched()V

    goto/16 :goto_3

    .line 146
    :pswitch_d
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/Mno;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->_syncContact(Lcom/sec/internal/constants/Mno;)V

    goto/16 :goto_3

    .line 81
    :pswitch_e
    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->onOwnCapabilitiesChanged(I)V

    goto/16 :goto_3

    .line 129
    :pswitch_f
    iget v2, v0, Landroid/os/Message;->arg2:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVT_LAZY_CAPABILITIES_QUERY: refreshtype = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/sec/ims/options/CapabilityRefreshType;->values()[Lcom/sec/ims/options/CapabilityRefreshType;

    move-result-object v2

    iget v3, v0, Landroid/os/Message;->arg1:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne v2, v3, :cond_1

    move v3, v13

    goto :goto_0

    :cond_1
    move v3, v5

    .line 131
    :goto_0
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_LAZY:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v4

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZII)Z

    goto/16 :goto_3

    .line 123
    :pswitch_10
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 124
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->loadConfig(I)V

    .line 125
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->onImsSettingsUpdate(I)V

    goto/16 :goto_3

    .line 69
    :pswitch_11
    iget v2, v0, Landroid/os/Message;->arg2:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVT_REQUEST_CAPABILITIES: refreshtype = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/sec/ims/options/CapabilityRefreshType;->values()[Lcom/sec/ims/options/CapabilityRefreshType;

    move-result-object v2

    iget v3, v0, Landroid/os/Message;->arg1:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne v2, v3, :cond_2

    move v3, v13

    goto :goto_1

    :cond_2
    move v3, v5

    .line 71
    :goto_1
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_NONE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v4

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZII)Z

    goto/16 :goto_3

    .line 85
    :pswitch_12
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v0, v0, Landroid/os/Message;->arg1:I

    if-ne v0, v13, :cond_3

    move v5, v13

    :cond_3
    invoke-virtual {v1, v2, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setOwnCapabilities(IZ)V

    goto/16 :goto_3

    .line 97
    :pswitch_13
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 98
    const-string v3, "URIS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 99
    const-string v6, "PHONEID"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 100
    const-string v6, "IS_RESPONSE"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    goto :goto_2

    :cond_4
    move v6, v5

    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 101
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVT_NEW_CAPABILITIES_RECEIVED: isResponse "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isSrRcsOptionsEnabled(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v6, :cond_6

    const-string v4, "CAPA_TAGS"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "RESP_CODE"

    if-nez v6, :cond_5

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 104
    :cond_5
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, "REASON_HDR"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 105
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v3

    move v2, v5

    move-object v3, v6

    move v5, v8

    .line 104
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->notifyOptionsResponseToAOSP(Lcom/sec/ims/util/ImsUri;ILjava/lang/String;Ljava/util/List;I)V

    goto/16 :goto_3

    .line 107
    :cond_6
    const-string v4, "PIDF"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 108
    const-string v4, "FEATURES"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 109
    const-string v4, "LASTSEEN"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 110
    const-string v4, "EXTFEATURE"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 111
    const-string v4, "ISTOKENUSED"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 112
    const-string v4, "PAID"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 113
    const-string v4, "XBOTVERSION"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 114
    const-string v4, "EXTENDEDMESSAGINGVERSION"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 117
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->values()[Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    move-result-object v2

    iget v0, v0, Landroid/os/Message;->arg1:I

    aget-object v4, v2, v0

    move-object/from16 v0, p1

    move-object v1, v3

    move-wide v2, v6

    move v6, v9

    move-object v7, v12

    move v9, v11

    move-object v11, v14

    move-object v12, v15

    .line 116
    invoke-virtual/range {v0 .. v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->onUpdateCapabilities(Ljava/util/List;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;ILjava/util/List;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 89
    :pswitch_14
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->requestInitialCapabilitiesQuery(I)V

    goto :goto_3

    .line 93
    :pswitch_15
    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->onContactChanged(Z)V

    goto :goto_3

    .line 57
    :pswitch_16
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v5, v5, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->poll(ZZI)V

    goto :goto_3

    .line 166
    :cond_7
    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updateMsgAppInfo(Z)V

    goto :goto_3

    .line 136
    :cond_8
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_NONE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    iget v4, v0, Landroid/os/Message;->arg1:I

    iget v0, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->requestCapabilityExchange(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;II)I

    :cond_9
    :goto_3
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
