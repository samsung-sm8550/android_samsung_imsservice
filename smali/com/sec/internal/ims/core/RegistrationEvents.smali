.class public Lcom/sec/internal/ims/core/RegistrationEvents;
.super Ljava/lang/Object;
.source "RegistrationEvents.java"


# static fields
.field protected static final DATAUSAGE_REACH_TO_LIMIT:I = 0x2c8

.field protected static final EVENT_ADS_CHANGED:I = 0x2be

.field public static final EVENT_BLOCK_REGISTRATION_HYS_TIMER:I = 0x326

.field public static final EVENT_BLOCK_REGISTRATION_ROAMING_TIMER:I = 0x90

.field public static final EVENT_BOOT_COMPLETED:I = 0x96

.field protected static final EVENT_CELL_INFO_CHANGED:I = 0x18

.field public static final EVENT_CHATBOT_AGREEMENT_CHANGED:I = 0x38

.field public static final EVENT_CHECK_UNPROCESSED_OMADM_CONFIG:I = 0x197

.field public static final EVENT_CHECK_UNPROCESSED_VOLTE_STATE:I = 0x9d

.field public static final EVENT_CONFIG_UPDATED:I = 0x23

.field public static final EVENT_CONTACT_ACTIVATED:I = 0x329

.field public static final EVENT_DEFAULT_NETWORK_CHANGED:I = 0x2c2

.field public static final EVENT_DELAYED_DEREGISTER:I = 0x80

.field public static final EVENT_DELAYED_DEREGISTERINTERNAL:I = 0x91

.field public static final EVENT_DELAYED_STOP_PDN:I = 0x85

.field public static final EVENT_DEREGISTERED:I = 0x65

.field public static final EVENT_DEREGISTER_BY_PENDED_DEFAULT_NET_CHANGED:I = 0x12

.field public static final EVENT_DEREGISTER_FOR_DCN:I = 0x327

.field public static final EVENT_DEREGISTER_TIMEOUT:I = 0x6b

.field public static final EVENT_DEREGISTRATION_REQUESTED:I = 0x78

.field public static final EVENT_DISCONNECT_PDN_BY_TIMEOUT:I = 0x194

.field public static final EVENT_DISCONNECT_PDN_BY_VOLTE_DISABLED:I = 0x196

.field public static final EVENT_DM_CONFIG_COMPLETE:I = 0x1d

.field public static final EVENT_DM_CONFIG_TIMEOUT:I = 0x2b

.field public static final EVENT_DNS_RESPONSE:I = 0x39

.field public static final EVENT_DO_PENDING_UPDATE_REGISTRATION:I = 0x20

.field public static final EVENT_DO_RECOVERY_ACTION:I = 0x86

.field public static final EVENT_DSAC_MODE_CHANGED:I = 0x92

.field public static final EVENT_DYNAMIC_IMS_UPDATED:I = 0x198

.field public static final EVENT_E911_REGI_TIMEOUT:I = 0x9b

.field protected static final EVENT_EC_VBC_SETTING_CHANGED:I = 0x9c

.field public static final EVENT_EMERGENCY_READY:I = 0x77

.field protected static final EVENT_EPDG_CONNECTED:I = 0x1a

.field public static final EVENT_EPDG_DEREGISTER_REQUESTED:I = 0x7c

.field public static final EVENT_EPDG_DISCONNECTED:I = 0x1b

.field public static final EVENT_EPDG_EVENT_TIMEOUT:I = 0x87

.field public static final EVENT_EPDG_HANDOVER_ENABLE_CHANGED:I = 0x9a

.field protected static final EVENT_EPDG_IKEERROR:I = 0x34

.field protected static final EVENT_EPDG_IPSECDISCONNECTED:I = 0x36

.field public static final EVENT_EPDG_VOICE_PREFERENCE_CHANGED:I = 0x7b

.field public static final EVENT_FINISH_OMADM_PROVISIONING_UPDATE:I = 0x27

.field public static final EVENT_FINISH_THREAD_FOR_GETTING_HOST_ADDRESS:I = 0x3c

.field public static final EVENT_FLIGHT_MODE_CHANGED:I = 0xc

.field public static final EVENT_FORCED_UPDATE_REGISTRATION_REQUESTED:I = 0x8c

.field public static final EVENT_FORCE_SMS_PUSH:I = 0x8f

.field public static final EVENT_GEO_LOCATION_UPDATED:I = 0x28

.field public static final EVENT_HANDOFF_EVENT_TIMEOUT:I = 0x88

.field public static final EVENT_IMS_PDN_CONNECTING:I = 0x191

.field public static final EVENT_IMS_PROFILE_UPDATED:I = 0xf

.field public static final EVENT_IMS_SWITCH_UPDATED:I = 0x11

.field public static final EVENT_LOCAL_IP_CHANGED:I = 0x5

.field public static final EVENT_LOCATION_CACHE_EXPIRY:I = 0x323

.field public static final EVENT_LOCATION_TIMEOUT:I = 0x320

.field public static final EVENT_LTE_DATA_NETWORK_MODE_CHAGED:I = 0x32

.field public static final EVENT_MANUAL_DEREGISTER:I = 0xa

.field public static final EVENT_MANUAL_REGISTER:I = 0x9

.field public static final EVENT_MNOMAP_UPDATED:I = 0x94

.field public static final EVENT_MOBILE_DATA_CHANGED:I = 0x22

.field public static final EVENT_MOBILE_DATA_PRESSED_CHANGED:I = 0x99

.field public static final EVENT_MOBILE_RADIO_CONNECTED:I = 0x3d

.field public static final EVENT_MOBILE_RADIO_DISCONNECTED:I = 0x3e

.field public static final EVENT_NETWORK_EVENT_CHANGED:I = 0x2bd

.field public static final EVENT_NETWORK_MODE_CHANGE_TIMEOUT:I = 0x31

.field public static final EVENT_NETWORK_SUSPENDED:I = 0x97

.field public static final EVENT_NETWORK_TYPE:I = 0x3

.field public static final EVENT_OWN_CAPABILITIES_CHANGED:I = 0x1f

.field public static final EVENT_PCO_INFO:I = 0x2bf

.field public static final EVENT_PDN_CONNECTED:I = 0x16

.field public static final EVENT_PDN_DISCONNECTED:I = 0x17

.field protected static final EVENT_PDN_FAILED:I = 0x81

.field public static final EVENT_POSTPONE_UPDATE_REGISTRATION_BY_DMA_CHANGE:I = 0x8b

.field public static final EVENT_RCS_ALLOWED_CHANGED:I = 0x35

.field public static final EVENT_RCS_DELAYED_DEREGISTER:I = 0x8e

.field public static final EVENT_RCS_USER_SETTING_CHANGED:I = 0x93

.field public static final EVENT_REFRESH_REGISTRATION:I = 0x8d

.field public static final EVENT_REGEVENT_CONTACT_URI_NOTIFIED:I = 0x32a

.field public static final EVENT_REGISTERED:I = 0x64

.field public static final EVENT_REGISTER_ERROR:I = 0x68

.field public static final EVENT_REMOVE_CHAT_FEATURES_BY_SIP_FORBIDDEN:I = 0x89

.field public static final EVENT_REQUEST_DM_CONFIG:I = 0x1c

.field public static final EVENT_REQUEST_FULL_NETWORK_REGISTRATION:I = 0x3f

.field public static final EVENT_REQUEST_LOCATION:I = 0x321

.field public static final EVENT_REQUEST_NOTIFY_VOLTE_SETTINGS_OFF:I = 0x83

.field public static final EVENT_REQUEST_X509_CERT_VERIFY:I = 0x1e

.field public static final EVENT_ROAMING_DATA_CHANGED:I = 0x2c

.field public static final EVENT_ROAMING_SETTINGS_CHANGED:I = 0x2e

.field public static final EVENT_RTTMODE_UPDATED:I = 0x2c1

.field public static final EVENT_SATELLITE_MODE_CHANGED:I = 0x32c

.field public static final EVENT_SETUP_WIZARD_COMPLETED:I = 0x32b

.field public static final EVENT_SET_THIRDPARTY_FEATURE_TAGS:I = 0x7e

.field public static final EVENT_SHUTDOWN:I = 0x82

.field public static final EVENT_SIM_READY:I = 0x14

.field public static final EVENT_SIM_REFRESH:I = 0x24

.field public static final EVENT_SIM_REFRESH_TIMEOUT:I = 0x2a

.field protected static final EVENT_SIM_SUBSCRIBE_ID_CHANGED:I = 0x2c3

.field public static final EVENT_SSAC_REREGISTER:I = 0x79

.field public static final EVENT_START_GEO_LOCATION_UPDATE:I = 0x33

.field public static final EVENT_START_OMADM_PROVISIONING_UPDATE:I = 0x26

.field public static final EVENT_SUBSCRIBE_ERROR:I = 0x6c

.field public static final EVENT_TELEPHONY_CALL_STATUS_CHANGED:I = 0x21

.field public static final EVENT_TIMS_ESTABLISHMENT_TIMEOUT:I = 0x84

.field public static final EVENT_TIMS_ESTABLISHMENT_TIMEOUT_RCS:I = 0x98

.field public static final EVENT_TRY_EMERGENCY_REGISTER:I = 0x76

.field public static final EVENT_TRY_REGISTER:I = 0x2

.field public static final EVENT_TRY_REGISTER_TIMER:I = 0x4

.field public static final EVENT_TTYMODE_UPDATED:I = 0x25

.field protected static final EVENT_UICC_CHANGED:I = 0x15

.field public static final EVENT_UPDATE_CHAT_SERVICE_BY_DMA_CHANGE:I = 0x8a

.field public static final EVENT_UPDATE_REGISTRATION:I = 0x19

.field public static final EVENT_UPDATE_REGI_CONFIG:I = 0x199

.field public static final EVENT_UPDATE_SIP_DELEGATE_REGISTRATION:I = 0x3a

.field public static final EVENT_UPDATE_SIP_DELEGATE_REGI_TIMEOUT:I = 0x3b

.field public static final EVENT_USER_SWITCHED:I = 0x3e8

.field public static final EVENT_VIDEO_SETTING_CHANGED:I = 0x7f

.field public static final EVENT_VOLTE_SETTING_CHANGED:I = 0x7d

.field public static final EVENT_VOWIFI_SETTING_CHANGED:I = 0x7a

.field public static final EVENT_WFC_SWITCH_PROFILE:I = 0x2c0

.field private static final TAG:Ljava/lang/String; = "RegistrationEvents"

.field private static final msgToStringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7ZnzH1PhQR9xmOmIjTjtlVWYmHs(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationEvents;->lambda$handleEvent$4(Lcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QatVRg9K2Sf88OPFt28kPNEisHY(Ljava/lang/reflect/Field;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationEvents;->lambda$static$2(Ljava/lang/reflect/Field;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TpsmQ7Y5MmUOhXQHSQuke11Aumw(Ljava/lang/reflect/Field;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationEvents;->lambda$static$0(Ljava/lang/reflect/Field;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Zm5V-KjmjkjGdLb_719acY9Uyio(Ljava/lang/reflect/Field;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationEvents;->lambda$static$1(Ljava/lang/reflect/Field;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uUajpcnlq0j5xWs67DXQf-CsJ9I(Ljava/lang/reflect/Field;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationEvents;->lambda$static$3(Ljava/lang/reflect/Field;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationEvents;->msgToStringMap:Ljava/util/Map;

    .line 155
    const-class v0, Lcom/sec/internal/ims/core/RegistrationEvents;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationEvents$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/RegistrationEvents$$ExternalSyntheticLambda0;-><init>()V

    .line 156
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationEvents$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/RegistrationEvents$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationEvents$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/RegistrationEvents$$ExternalSyntheticLambda2;-><init>()V

    .line 157
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationEvents$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/RegistrationEvents$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static handleEvent(Landroid/os/Message;Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/ims/core/NetworkEventController;Lcom/sec/internal/ims/core/UserEventController;)Z
    .locals 5

    .line 177
    iget v0, p0, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x3

    const-string/jumbo v3, "phoneId"

    const/4 v4, 0x0

    if-eq v0, v1, :cond_18

    const/4 v1, 0x4

    if-eq v0, v1, :cond_17

    const/4 v1, 0x5

    if-eq v0, v1, :cond_16

    const/16 v1, 0x9

    if-eq v0, v1, :cond_15

    const/16 v1, 0xa

    if-eq v0, v1, :cond_14

    const/16 v1, 0x11

    if-eq v0, v1, :cond_13

    const/16 v1, 0x12

    if-eq v0, v1, :cond_12

    const/16 v1, 0x64

    if-eq v0, v1, :cond_11

    const/16 v1, 0x65

    if-eq v0, v1, :cond_10

    const/16 v1, 0x6b

    if-eq v0, v1, :cond_f

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_e

    const-string v1, "mode"

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    return v4

    .line 354
    :pswitch_0
    iget p1, p0, Landroid/os/Message;->arg1:I

    .line 355
    iget p2, p0, Landroid/os/Message;->arg2:I

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p3, p1, p2, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->onPdnFailed(III)V

    goto/16 :goto_1

    .line 497
    :pswitch_1
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onDelayedDeregister(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto/16 :goto_1

    .line 408
    :pswitch_2
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p4, p1, p0}, Lcom/sec/internal/ims/core/UserEventController;->onVideoCallServiceSettingChanged(ZI)V

    goto/16 :goto_1

    .line 489
    :pswitch_3
    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onThirdParyFeatureTagsUpdated(I)V

    goto/16 :goto_1

    .line 400
    :pswitch_4
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p4, p1, p0}, Lcom/sec/internal/ims/core/UserEventController;->onVolteServiceSettingChanged(ZI)V

    goto/16 :goto_1

    .line 308
    :pswitch_5
    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->onEpdgDeregisterRequested(I)V

    goto/16 :goto_1

    .line 312
    :pswitch_6
    iget p1, p0, Landroid/os/Message;->arg1:I

    .line 313
    iget p4, p0, Landroid/os/Message;->arg2:I

    if-ne p4, v2, :cond_0

    move v4, v2

    .line 314
    :cond_0
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->isCdmaAvailableForVoice(I)Z

    move-result p4

    if-eq p4, v4, :cond_1b

    .line 315
    invoke-virtual {p2, p1, v4}, Lcom/sec/internal/ims/core/RegistrationManager;->setCdmaAvailableForVoice(IZ)V

    .line 316
    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->onVoicePreferredChanged(I)V

    goto/16 :goto_1

    .line 396
    :pswitch_7
    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p4, p0, p1}, Lcom/sec/internal/ims/core/UserEventController;->onVowifiServiceSettingChanged(ILcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;)V

    goto/16 :goto_1

    .line 477
    :pswitch_8
    iget-object p2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget p0, p0, Landroid/os/Message;->arg1:I

    if-ne p0, v2, :cond_1

    move v4, v2

    :cond_1
    invoke-virtual {p1, p2, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onSSACRegiRequested(IZ)V

    goto/16 :goto_1

    .line 227
    :pswitch_9
    iget-object p2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Lcom/sec/internal/ims/core/RegisterTask;

    iget p3, p0, Landroid/os/Message;->arg1:I

    if-ne p3, v2, :cond_2

    move p3, v2

    goto :goto_0

    :cond_2
    move p3, v4

    :goto_0
    iget p0, p0, Landroid/os/Message;->arg2:I

    if-ne p0, v2, :cond_3

    move v4, v2

    :cond_3
    invoke-virtual {p1, p2, p3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onDeregistrationRequest(Lcom/sec/internal/ims/core/RegisterTask;ZZ)V

    goto/16 :goto_1

    .line 239
    :pswitch_a
    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onEmergencyReady(I)V

    goto/16 :goto_1

    .line 235
    :pswitch_b
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryEmergencyRegister(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto/16 :goto_1

    .line 641
    :pswitch_c
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->triggerFullNetworkRegistration(II)V

    goto/16 :goto_1

    .line 658
    :pswitch_d
    iget p0, p0, Landroid/os/Message;->arg1:I

    .line 659
    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->handleInactiveCiaOnMobileDisconnected(I)V

    goto/16 :goto_1

    .line 653
    :pswitch_e
    iget p0, p0, Landroid/os/Message;->arg1:I

    .line 654
    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->handleInactiveCiaOnMobileConnected(I)V

    goto/16 :goto_1

    .line 612
    :pswitch_f
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Thread;

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->finishThreadForGettingHostAddress(Ljava/lang/Thread;I)V

    goto/16 :goto_1

    .line 649
    :pswitch_10
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManager;->onUpdateSipDelegateRegistrationTimeOut(I)V

    goto/16 :goto_1

    .line 645
    :pswitch_11
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->onUpdateSipDelegateRegistration(I)V

    goto/16 :goto_1

    .line 607
    :pswitch_12
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget p3, p0, Landroid/os/Message;->arg1:I

    iget p0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p2, p1, p3, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onDnsResponse(Ljava/util/List;II)V

    goto/16 :goto_1

    .line 392
    :pswitch_13
    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p4, p0}, Lcom/sec/internal/ims/core/UserEventController;->onChatbotAgreementChanged(I)V

    goto/16 :goto_1

    .line 325
    :pswitch_14
    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->onIpsecDisconnected(I)V

    goto/16 :goto_1

    .line 578
    :pswitch_15
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onRCSAllowedChangedbyMDM()V

    goto/16 :goto_1

    .line 321
    :pswitch_16
    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->onEpdgIkeError(I)V

    goto/16 :goto_1

    .line 570
    :pswitch_17
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/gls/LocationInfo;

    iget p0, p0, Landroid/os/Message;->arg1:I

    if-ne p0, v2, :cond_4

    move v4, v2

    :cond_4
    invoke-virtual {p2, p1, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateGeolocation(Lcom/sec/internal/constants/ims/gls/LocationInfo;Z)V

    goto/16 :goto_1

    .line 388
    :pswitch_18
    iget p1, p0, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_5

    move v4, v2

    :cond_5
    iget p0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p4, v4, p0}, Lcom/sec/internal/ims/core/UserEventController;->onLteDataNetworkModeSettingChanged(ZI)V

    goto/16 :goto_1

    .line 566
    :pswitch_19
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryRegister()V

    goto/16 :goto_1

    .line 380
    :pswitch_1a
    iget p1, p0, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_6

    move v4, v2

    :cond_6
    iget p0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p4, v4, p0}, Lcom/sec/internal/ims/core/UserEventController;->onRoamingDataChanged(ZI)V

    goto/16 :goto_1

    .line 473
    :pswitch_1b
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x2a

    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    goto/16 :goto_1

    .line 422
    :sswitch_0
    invoke-virtual {p4}, Lcom/sec/internal/ims/core/UserEventController;->onUserSwitched()V

    goto/16 :goto_1

    .line 676
    :sswitch_1
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onSatelliteModeChanged(Z)V

    goto/16 :goto_1

    .line 206
    :sswitch_2
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onRegEventContactUriNotified(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 201
    :sswitch_3
    iget p1, p0, Landroid/os/Message;->arg2:I

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/RegistrationEvents$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/RegistrationEvents$$ExternalSyntheticLambda4;-><init>()V

    .line 202
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_4
    const/16 p1, 0x327

    .line 617
    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    goto/16 :goto_1

    .line 562
    :sswitch_5
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onLocationCacheExpired(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto/16 :goto_1

    .line 553
    :sswitch_6
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onRequestLocation()V

    goto/16 :goto_1

    .line 549
    :sswitch_7
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onLocationTimerExpired(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto/16 :goto_1

    .line 505
    :sswitch_8
    iget p1, p0, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_7

    move v4, v2

    :cond_7
    iget p0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p4, v4, p0}, Lcom/sec/internal/ims/core/UserEventController;->onDataUsageLimitReached(ZI)V

    goto/16 :goto_1

    .line 557
    :sswitch_9
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/helper/AsyncResult;

    .line 558
    iget-object p0, p0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onSimSubscribeIdChanged(Landroid/telephony/SubscriptionInfo;)V

    goto/16 :goto_1

    .line 284
    :sswitch_a
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p3, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->onDefaultNetworkStateChanged(I)V

    goto/16 :goto_1

    .line 417
    :sswitch_b
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    .line 418
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p4, p1, p0}, Lcom/sec/internal/ims/core/UserEventController;->onRTTmodeUpdated(IZ)V

    goto/16 :goto_1

    .line 545
    :sswitch_c
    iget-object p2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, [B

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onWfcSwitchProfile([BI)V

    goto/16 :goto_1

    .line 541
    :sswitch_d
    iget-object p2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget p3, p0, Landroid/os/Message;->arg1:I

    iget p0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p1, p2, p3, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onPcoInfo(III)V

    goto/16 :goto_1

    .line 493
    :sswitch_e
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onActiveDataSubscriptionChanged()V

    goto/16 :goto_1

    .line 280
    :sswitch_f
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, p1, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->onNetworkEventChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    goto/16 :goto_1

    .line 631
    :sswitch_10
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegiConfig(I)V

    goto/16 :goto_1

    .line 450
    :sswitch_11
    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->handleDynamicImsUpdated(I)V

    goto/16 :goto_1

    .line 349
    :sswitch_12
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 350
    iget p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPhoneId:I

    invoke-virtual {p3, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->onCheckUnprocessedOmadmConfig(I)V

    goto/16 :goto_1

    .line 485
    :sswitch_13
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onDisconnectPdnByVolteDisabled(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto/16 :goto_1

    .line 481
    :sswitch_14
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onDisconnectPdnByTimeout(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto/16 :goto_1

    .line 259
    :sswitch_15
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_8

    .line 260
    const-string p0, "RegistrationEvents"

    const-string p1, "handleEvent: Ignore EVENT_IMS_PDN_CONNECTING with null obj!"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->assertUnreachable(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 263
    :cond_8
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, p1, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->onPdnConnecting(II)V

    goto/16 :goto_1

    .line 671
    :sswitch_16
    iget p0, p0, Landroid/os/Message;->arg1:I

    .line 672
    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->checkUnProcessedVoLTEState(I)V

    goto/16 :goto_1

    .line 667
    :sswitch_17
    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p4, p0}, Lcom/sec/internal/ims/core/UserEventController;->onEcVbcSettingChanged(I)V

    goto/16 :goto_1

    .line 663
    :sswitch_18
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->handleE911RegiTimeOut(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    goto/16 :goto_1

    .line 635
    :sswitch_19
    iget p1, p0, Landroid/os/Message;->arg1:I

    .line 636
    iget p0, p0, Landroid/os/Message;->arg2:I

    if-ne p0, v2, :cond_9

    move v4, v2

    .line 637
    :cond_9
    invoke-virtual {p2, p1, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateEpdgHandoverEnableChanged(IZ)V

    goto/16 :goto_1

    .line 376
    :sswitch_1a
    iget p1, p0, Landroid/os/Message;->arg1:I

    iget p0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p4, p1, p0, p3}, Lcom/sec/internal/ims/core/UserEventController;->onMobileDataPressedChanged(IILcom/sec/internal/ims/core/NetworkEventController;)V

    goto/16 :goto_1

    .line 621
    :sswitch_1b
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/RegisterTask;

    iget p3, p0, Landroid/os/Message;->arg1:I

    if-ne p3, v2, :cond_a

    move v4, v2

    :cond_a
    iget p0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p2, p1, v4, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->suspended(Lcom/sec/internal/ims/core/RegisterTask;ZI)V

    goto/16 :goto_1

    .line 594
    :sswitch_1c
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onBootCompleted()V

    goto/16 :goto_1

    .line 446
    :sswitch_1d
    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->handleMnoMapUpdated(I)V

    goto/16 :goto_1

    .line 404
    :sswitch_1e
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p4, p1, p0}, Lcom/sec/internal/ims/core/UserEventController;->onRcsUserSettingChanged(II)V

    goto/16 :goto_1

    .line 590
    :sswitch_1f
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onDsacModeChanged()V

    goto/16 :goto_1

    .line 586
    :sswitch_20
    iget-object p2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Lcom/sec/internal/ims/core/RegisterTask;

    iget p0, p0, Landroid/os/Message;->arg1:I

    if-ne p0, v2, :cond_b

    move v4, v2

    :cond_b
    invoke-virtual {p1, p2, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onDelayedDeregisterInternal(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    goto/16 :goto_1

    .line 582
    :sswitch_21
    iget p2, p0, Landroid/os/Message;->arg1:I

    iget p0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p1, p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onBlockRegistrationRoamingTimer(II)V

    goto/16 :goto_1

    .line 574
    :sswitch_22
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onRcsDelayedDeregister()V

    goto/16 :goto_1

    .line 210
    :sswitch_23
    iget p0, p0, Landroid/os/Message;->arg1:I

    .line 211
    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByRegHandle(I)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 213
    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->onRefreshRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V

    goto/16 :goto_1

    .line 537
    :sswitch_24
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->onForcedUpdateRegistrationRequested(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto/16 :goto_1

    .line 533
    :sswitch_25
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onUpdateChatServiceByDmaChange(IZ)V

    goto/16 :goto_1

    .line 525
    :sswitch_26
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onUpdateChatServiceByDmaChange(IZ)V

    goto/16 :goto_1

    .line 529
    :sswitch_27
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onDisableChatFeatureBySipForbidden(I)V

    goto/16 :goto_1

    .line 359
    :sswitch_28
    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->handOffEventTimeout(I)V

    goto/16 :goto_1

    .line 300
    :sswitch_29
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/RegisterTask;

    if-eqz p1, :cond_1b

    .line 302
    const-string p3, "ePDG timeout"

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 303
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    sget-object p1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->EPDG_TIMEOUT:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    goto/16 :goto_1

    .line 231
    :sswitch_2a
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->doRecoveryAction(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto/16 :goto_1

    .line 519
    :sswitch_2b
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 520
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->handleDelayedStopPdn(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto/16 :goto_1

    .line 515
    :sswitch_2c
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onTimsTimerExpired(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto/16 :goto_1

    .line 509
    :sswitch_2d
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onRequestNotifyVolteSettingsOff(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto/16 :goto_1

    .line 193
    :sswitch_2e
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onRegisterError(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 384
    :sswitch_2f
    iget p1, p0, Landroid/os/Message;->arg1:I

    iget p0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p4, p1, p0}, Lcom/sec/internal/ims/core/UserEventController;->onRoamingSettingsChanged(II)V

    goto/16 :goto_1

    .line 501
    :sswitch_30
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onGeoLocationUpdated()V

    goto/16 :goto_1

    .line 463
    :sswitch_31
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 464
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->finishOmadmProvisioningUpdate()V

    goto/16 :goto_1

    .line 458
    :sswitch_32
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 459
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->startOmadmProvisioningUpdate()V

    goto/16 :goto_1

    .line 412
    :sswitch_33
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    .line 413
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p4, p1, p0}, Lcom/sec/internal/ims/core/UserEventController;->onTTYmodeUpdated(IZ)V

    goto/16 :goto_1

    .line 468
    :sswitch_34
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/helper/AsyncResult;

    .line 469
    iget-object p0, p0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onSimRefresh(I)V

    goto/16 :goto_1

    .line 454
    :sswitch_35
    iget-object p2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onConfigUpdated(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 372
    :sswitch_36
    iget p1, p0, Landroid/os/Message;->arg1:I

    iget p0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p4, p1, p0, p3}, Lcom/sec/internal/ims/core/UserEventController;->onMobileDataChanged(IILcom/sec/internal/ims/core/NetworkEventController;)V

    goto/16 :goto_1

    .line 430
    :sswitch_37
    iget p2, p0, Landroid/os/Message;->arg1:I

    iget p0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p1, p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onTelephonyCallStatusChanged(II)V

    goto/16 :goto_1

    .line 438
    :sswitch_38
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->onPendingUpdateRegistration()V

    goto/16 :goto_1

    .line 434
    :sswitch_39
    iget p1, p0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/ims/options/Capabilities;

    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onOwnCapabilitiesChanged(ILcom/sec/ims/options/Capabilities;)V

    goto/16 :goto_1

    .line 602
    :sswitch_3a
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, [Ljava/security/cert/X509Certificate;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->verifyX509Certificate([Ljava/security/cert/X509Certificate;)V

    goto/16 :goto_1

    .line 344
    :pswitch_1c
    :sswitch_3b
    iget p0, p0, Landroid/os/Message;->arg1:I

    const/16 p1, 0x1d

    if-ne v0, p1, :cond_c

    move v4, v2

    .line 345
    :cond_c
    invoke-virtual {p3, p0, v4}, Lcom/sec/internal/ims/core/NetworkEventController;->onDmConfigCompleted(IZ)V

    goto/16 :goto_1

    .line 337
    :sswitch_3c
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 338
    iget p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPhoneId:I

    sget-object p4, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {p2, p1, p4}, Lcom/sec/internal/ims/core/RegistrationManager;->setOmadmState(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 339
    iget p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPhoneId:I

    invoke-virtual {p3, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->triggerOmadmConfig(I)V

    goto/16 :goto_1

    .line 296
    :sswitch_3d
    iget p1, p0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p3, p1, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->onEpdgDisconnected(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 292
    :sswitch_3e
    iget p1, p0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p3, p1, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->onEpdgConnected(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 243
    :sswitch_3f
    iget-object p2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Lcom/sec/ims/settings/ImsProfile;

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;I)V

    goto/16 :goto_1

    .line 329
    :sswitch_40
    iget p0, p0, Landroid/os/Message;->arg1:I

    .line 330
    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManager;->updatePani(I)V

    .line 331
    invoke-virtual {p2, p0, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateTimeInPlani(IZ)V

    .line 332
    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    .line 333
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->onPendingUpdateRegistration()V

    goto/16 :goto_1

    .line 271
    :sswitch_41
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p3, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->onPdnDisconnected(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    goto/16 :goto_1

    .line 267
    :sswitch_42
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p3, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->onPdnConnected(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto/16 :goto_1

    .line 363
    :sswitch_43
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/helper/AsyncResult;

    .line 364
    iget-object p0, p0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->handleUiccChanged(I)V

    goto/16 :goto_1

    .line 179
    :sswitch_44
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/helper/AsyncResult;

    .line 180
    iget-object p2, p0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 181
    invoke-virtual {p1, p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->handleSimReady(ILcom/sec/internal/helper/AsyncResult;)V

    goto/16 :goto_1

    .line 368
    :sswitch_45
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onImsProfileUpdated(I)V

    goto/16 :goto_1

    .line 442
    :sswitch_46
    iget p0, p0, Landroid/os/Message;->arg1:I

    if-ne p0, v2, :cond_d

    move v4, v2

    :cond_d
    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onFlightModeChanged(Z)V

    goto/16 :goto_1

    .line 197
    :cond_e
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onSubscribeError(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 598
    :cond_f
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onDeregisterTimeout(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    goto/16 :goto_1

    .line 189
    :cond_10
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onDeregistered(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 185
    :cond_11
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onRegistered(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto/16 :goto_1

    .line 625
    :cond_12
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 626
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p1

    invoke-virtual {p3, p0, p1, v4}, Lcom/sec/internal/ims/core/NetworkEventController;->isPreferredPdnForRCSRegister(Lcom/sec/internal/ims/core/RegisterTask;IZ)Z

    .line 627
    iget-object p1, p2, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p0

    const-wide/16 p2, 0x7d0

    invoke-virtual {p1, p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    goto :goto_1

    .line 426
    :cond_13
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onImsSwitchUpdated(I)V

    goto :goto_1

    .line 251
    :cond_14
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    .line 252
    const-string p1, "id"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 253
    const-string p3, "explicitDeregi"

    invoke-virtual {p0, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    .line 254
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 255
    invoke-virtual {p2, p1, p3, p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->onManualDeregister(IZI)V

    goto :goto_1

    .line 247
    :cond_15
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->onManualRegister(Lcom/sec/ims/settings/ImsProfile;I)V

    goto :goto_1

    .line 288
    :cond_16
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p3, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->onLocalIpChanged(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto :goto_1

    .line 218
    :cond_17
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    goto :goto_1

    .line 275
    :cond_18
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    .line 276
    const-string p1, "networkType"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string p2, "isWifiConnected"

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v2, :cond_19

    move v4, v2

    :cond_19
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3, p1, v4, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->onNetworkChanged(IZI)V

    goto :goto_1

    .line 223
    :cond_1a
    :sswitch_47
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    :cond_1b
    :goto_1
    return v2

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_46
        0xf -> :sswitch_45
        0x14 -> :sswitch_44
        0x15 -> :sswitch_43
        0x16 -> :sswitch_42
        0x17 -> :sswitch_41
        0x18 -> :sswitch_40
        0x19 -> :sswitch_3f
        0x1a -> :sswitch_3e
        0x1b -> :sswitch_3d
        0x1c -> :sswitch_3c
        0x1d -> :sswitch_3b
        0x1e -> :sswitch_3a
        0x1f -> :sswitch_39
        0x20 -> :sswitch_38
        0x21 -> :sswitch_37
        0x22 -> :sswitch_36
        0x23 -> :sswitch_35
        0x24 -> :sswitch_34
        0x25 -> :sswitch_33
        0x26 -> :sswitch_32
        0x27 -> :sswitch_31
        0x28 -> :sswitch_30
        0x2e -> :sswitch_2f
        0x68 -> :sswitch_2e
        0x83 -> :sswitch_2d
        0x84 -> :sswitch_2c
        0x85 -> :sswitch_2b
        0x86 -> :sswitch_2a
        0x87 -> :sswitch_29
        0x88 -> :sswitch_28
        0x89 -> :sswitch_27
        0x8a -> :sswitch_26
        0x8b -> :sswitch_25
        0x8c -> :sswitch_24
        0x8d -> :sswitch_23
        0x8e -> :sswitch_22
        0x90 -> :sswitch_21
        0x91 -> :sswitch_20
        0x92 -> :sswitch_1f
        0x93 -> :sswitch_1e
        0x94 -> :sswitch_1d
        0x96 -> :sswitch_1c
        0x97 -> :sswitch_1b
        0x98 -> :sswitch_2c
        0x99 -> :sswitch_1a
        0x9a -> :sswitch_19
        0x9b -> :sswitch_18
        0x9c -> :sswitch_17
        0x9d -> :sswitch_16
        0x191 -> :sswitch_15
        0x194 -> :sswitch_14
        0x196 -> :sswitch_13
        0x197 -> :sswitch_12
        0x198 -> :sswitch_11
        0x199 -> :sswitch_10
        0x2bd -> :sswitch_f
        0x2be -> :sswitch_e
        0x2bf -> :sswitch_d
        0x2c0 -> :sswitch_c
        0x2c1 -> :sswitch_b
        0x2c2 -> :sswitch_a
        0x2c3 -> :sswitch_9
        0x2c8 -> :sswitch_8
        0x320 -> :sswitch_7
        0x321 -> :sswitch_6
        0x323 -> :sswitch_5
        0x327 -> :sswitch_4
        0x329 -> :sswitch_3
        0x32a -> :sswitch_2
        0x32b -> :sswitch_47
        0x32c -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x31
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x38
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x76
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$handleEvent$4(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 0

    .line 202
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onContactActivated()V

    return-void
.end method

.method private static synthetic lambda$static$0(Ljava/lang/reflect/Field;)Z
    .locals 0

    .line 156
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$static$1(Ljava/lang/reflect/Field;)Z
    .locals 0

    .line 156
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$static$2(Ljava/lang/reflect/Field;)Z
    .locals 1

    .line 157
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$static$3(Ljava/lang/reflect/Field;)V
    .locals 2

    .line 159
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationEvents;->msgToStringMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 161
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static msgToString(I)Ljava/lang/String;
    .locals 4

    .line 167
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationEvents;->msgToStringMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNKNOWN("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
