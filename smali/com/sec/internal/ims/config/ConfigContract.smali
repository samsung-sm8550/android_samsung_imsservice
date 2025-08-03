.class public Lcom/sec/internal/ims/config/ConfigContract;
.super Ljava/lang/Object;
.source "ConfigContract.java"


# static fields
.field public static final PATH_TABLE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final STORAGE_DEFAULT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/config/ConfigContract;->STORAGE_DEFAULT:Ljava/util/Map;

    .line 37
    const-string/jumbo v1, "root/vers/version"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "backup/vers/version"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string/jumbo v1, "root/vers/validity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "info/completed"

    const-string v3, "false"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v1, "info/tc_popup_user_accept"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "info/next_autoconfig_time"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "info/start_msisdn_timer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "info/rcs_version"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "info/rcs_profile"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "info/client_vendor"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v1, "info/client_version"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string/jumbo v1, "root/token/token"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string/jumbo v1, "root/services/rcsdisabledstate"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string/jumbo v1, "root/policy/sms_port"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v1, "root/serviceproviderext/spgurl"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string/jumbo v1, "root/serviceproviderext/params-url"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    .line 59
    const-string/jumbo v1, "version"

    const-string/jumbo v2, "root/vers/"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 60
    const-string/jumbo v1, "validity"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 61
    const-string/jumbo v1, "root/token/"

    const-string/jumbo v2, "token"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 64
    const-string/jumbo v1, "skip_count"

    const-string v2, "info/msisdn/"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 65
    const-string v1, "msgui_display"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 68
    const-string v1, "home_network_domain_name"

    const-string/jumbo v2, "root/application/0/"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 70
    const-string/jumbo v1, "private_user_identity"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 72
    const-string v1, "keep_alive_enabled"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 76
    const-string v1, "maxsizeimageshare"

    const-string/jumbo v2, "root/application/0/ext/"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 78
    const-string v1, "maxtimevideoshare"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 80
    const-string/jumbo v3, "q-value"

    invoke-static {v2, v3}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 82
    const-string v3, "inturlfmt"

    invoke-static {v2, v3}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 84
    const-string v3, "naturlfmt"

    invoke-static {v2, v3}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 86
    const-string/jumbo v3, "rcsVolteSingleRegistration"

    invoke-static {v2, v3}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 88
    const-string v3, "endUserConfReqId"

    invoke-static {v2, v3}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 90
    const-string/jumbo v3, "uuid_Value"

    invoke-static {v2, v3}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 94
    const-string v2, "UserName"

    const-string/jumbo v3, "root/application/0/appauth/"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 96
    const-string v2, "UserPwd"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 98
    const-string/jumbo v2, "realm"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 102
    const-string v2, "SupportedRCSVersions"

    const-string/jumbo v3, "root/application/1/services/"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 104
    const-string v2, "SupportedRCSProfileVersions"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 106
    const-string/jumbo v2, "rcsState"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 108
    const-string/jumbo v2, "rcsDisabledState"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 110
    const-string/jumbo v2, "presencePrfl"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 112
    const-string v2, "ChatAuth"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 114
    const-string v2, "GroupChatAuth"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 116
    const-string v2, "ftAuth"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 118
    const-string/jumbo v2, "standaloneMsgAuth"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 120
    const-string v2, "geolocPullAuth"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 122
    const-string v2, "geolocPushAuth"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 124
    const-string/jumbo v2, "vsAuth"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 126
    const-string v2, "isAuth"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 128
    const-string/jumbo v2, "rcsIPVoiceCallAuth"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 130
    const-string/jumbo v2, "rcsIPVideoCallAuth"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 132
    const-string v2, "IR94VideoAuth"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 134
    const-string v2, "allowRCSExtensions"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 136
    const-string v2, "composerAuth"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 138
    const-string/jumbo v2, "sharedMapAuth"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 140
    const-string/jumbo v2, "sharedSketchAuth"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 142
    const-string/jumbo v2, "postCallAuth"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 144
    const-string v2, "VBCAuth"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 148
    const-string/jumbo v2, "rcsMessagingDataOff"

    const-string/jumbo v3, "root/application/1/services/ext/dataoff/"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 150
    const-string v2, "fileTransferDataOff"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 152
    const-string/jumbo v2, "smsoIPDataOff"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 154
    const-string v2, "mmsDataOff"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 156
    const-string v2, "contentShareDataOff"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 158
    const-string/jumbo v2, "preAndPostCallDataOff"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 160
    const-string/jumbo v2, "volteDataOff"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 162
    const-string v2, "IPVideoCallDataOff"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 164
    const-string/jumbo v2, "provisioningDataOff"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 166
    const-string/jumbo v2, "syncDataOff"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 170
    const-string v2, "disableInitialAddressBookScan"

    const-string/jumbo v3, "root/application/1/capdiscovery/"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 172
    const-string/jumbo v2, "pollingperiod"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 174
    const-string/jumbo v2, "pollingrate"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 176
    const-string/jumbo v2, "pollingrateperiod"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 178
    const-string v2, "capinfoexpiry"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 180
    const-string v2, "nonRCScapInfoExpiry"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 182
    const-string v2, "defaultdisc"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 184
    const-string v2, "capDiscCommonStack"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 186
    const-string v2, "maxentriesinlist"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 188
    const-string/jumbo v2, "root/application/1/capdiscovery/ext/joyn/"

    const-string v3, "msgcapvalidity"

    invoke-static {v2, v3}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 190
    const-string/jumbo v2, "root/application/1/capdiscovery/ext/joyn/"

    const-string v3, "lastseenactive"

    invoke-static {v2, v3}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 194
    const-string v2, "PublishTimer"

    const-string/jumbo v3, "root/application/1/presence/"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 196
    const-string/jumbo v2, "source-throttlepublish"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 198
    const-string v2, "max-number-ofsubscriptions-inpresence-list"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 200
    const-string v2, "RLS-URI"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 202
    const-string/jumbo v2, "root/application/1/presence/location/"

    const-string v3, "locinfomaxvalidtime"

    invoke-static {v2, v3}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 204
    const-string/jumbo v2, "root/application/1/presence/location/"

    const-string v3, "client-obj-datalimit"

    invoke-static {v2, v3}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 208
    const-string v2, "imMsgTech"

    const-string/jumbo v3, "root/application/1/im/"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 210
    const-string v2, "imcapalwayson"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 212
    const-string v2, "imWarnSF"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 214
    const-string v2, "GroupChatFullStandFwd"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 216
    const-string v2, "GroupChatOnlyFStandFwd"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 218
    const-string/jumbo v2, "smsfallbackauth"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 220
    const-string v2, "imCapNonRCS"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 222
    const-string v2, "imwarniw"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 224
    const-string v2, "autaccept"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 226
    const-string v2, "imsessionstart"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 228
    const-string v2, "autacceptgroupchat"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 230
    const-string v2, "firstMessageInvite"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 232
    const-string v2, "TimerIdle"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 234
    const-string v2, "maxConcurrentSession"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 236
    const-string v2, "multiMediaChat"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 238
    const-string v2, "MaxSize"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 240
    const-string v2, "maxsize1to1"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 242
    const-string v2, "maxsize1tom"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 244
    const-string v2, "ftWarnSize"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 246
    const-string v2, "MaxSizeFileTr"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 248
    const-string v2, "MaxSizeFileTrIncoming"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 250
    const-string v2, "ftThumb"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 252
    const-string v2, "ftStAndFwEnabled"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 254
    const-string v2, "ftCapalwaysON"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 256
    const-string v2, "ftautaccept"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 258
    const-string v2, "ftHTTPCSURI"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 260
    const-string v2, "ftHTTPDLURI"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 262
    const-string v2, "ftHTTPCSUser"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 264
    const-string v2, "ftHTTPCSPwd"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 266
    const-string v2, "ftDefaultMech"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 268
    const-string v2, "ftHTTPFallback"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 270
    const-string/jumbo v2, "pres-srv-cap"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 272
    const-string v2, "deferred-msg-func-uri"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 274
    const-string v2, "max_adhoc_group_size"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 276
    const-string v2, "conf-fcty-uri"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 278
    const-string v2, "exploder-uri"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 280
    const-string v2, "mass-fcty-uri"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 282
    const-string v2, "ChatRevokeTimer"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 284
    const-string v2, "ftHTTPftWarnSize"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 286
    const-string v2, "ftHTTPMaxSizeFileTr"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 288
    const-string v2, "ftHTTPMaxSizeFileTrIncoming"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 290
    const-string v2, "max_adhoc_open_group_size"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 292
    const-string v2, "im-spam-reporting-uri"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 294
    const-string v2, "cbftHTTPCSURI"

    const-string/jumbo v3, "root/application/1/im/ext/"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 296
    const-string v2, "MaxSizeExtraFileTr"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 298
    const-string v2, "ftHTTPExtraCSURI"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 300
    const-string v2, "MaxIMDNAggregation"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 304
    const-string/jumbo v2, "root/application/1/cpm/standalonemsg/"

    const-string v3, "MaxSizeStandalone"

    invoke-static {v2, v3}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 306
    const-string/jumbo v2, "root/application/1/messaging/standalonemsg/"

    const-string v3, "MaxSize"

    invoke-static {v2, v3}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 308
    const-string/jumbo v2, "root/application/1/messaging/standalonemsg/"

    const-string v3, "SwitchoverSize"

    invoke-static {v2, v3}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 312
    const-string v2, "Url"

    const-string/jumbo v3, "root/application/1/cpm/messagestore/"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 314
    const-string v2, "Url"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 316
    const-string/jumbo v2, "root/application/1/cpm/"

    const-string v4, "messagestore/UserName"

    invoke-static {v2, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 318
    const-string/jumbo v2, "root/application/1/cpm/"

    const-string v4, "messagestore/UserPwd"

    invoke-static {v2, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 320
    const-string v2, "EventRpting"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 322
    const-string v2, "AuthArchive"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 324
    const-string v2, "SyncTimer"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 326
    const-string v2, "DataConnectionSyncTimer"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 328
    const-string v2, "SMSStore"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 330
    const-string v2, "MMSStore"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 334
    const-string/jumbo v2, "warnsizeimageshare"

    const-string/jumbo v3, "root/application/1/other/"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 336
    invoke-static {v3, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 338
    const-string v1, "extensionsMaxMSRPSize"

    invoke-static {v3, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 340
    const-string v1, "callComposerTimerIdle"

    invoke-static {v3, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 345
    const-string/jumbo v1, "root/application/1/xdms/"

    const-string/jumbo v2, "xcaprooturi"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 349
    const-string/jumbo v1, "psmedia"

    const-string/jumbo v2, "root/application/1/other/transportproto/"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 351
    const-string/jumbo v1, "wifimedia"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 353
    const-string/jumbo v1, "pssignalling"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 355
    const-string/jumbo v1, "wifisignalling"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 357
    const-string/jumbo v1, "psrtmedia"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 359
    const-string/jumbo v1, "pssignallingroaming"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 361
    const-string/jumbo v1, "psmediaroaming"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 363
    const-string/jumbo v1, "psrtmediaroaming"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 365
    const-string/jumbo v1, "wifirtmedia"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 369
    const-string v1, "messagingUX"

    const-string/jumbo v2, "root/application/1/ux/"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 371
    const-string/jumbo v1, "userAliasAuth"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 373
    const-string/jumbo v1, "spamNotificationText"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 375
    const-string/jumbo v1, "tokenLinkNotificationText"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 377
    const-string/jumbo v1, "unavailableEndpointText"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 379
    const-string/jumbo v1, "videoAndEnCallUX"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 381
    const-string v1, "IR51SwitchUx"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 383
    const-string v1, "msgFBDefault"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 385
    const-string v1, "ftFBDefault"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 387
    const-string v1, "callLogsBearerDiffer"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 389
    const-string v1, "allowEnrichedChatbotSearchDefault"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 391
    const-string v1, "ext/realtimeUserAliasAuth"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 395
    const-string/jumbo v1, "reconnectGuardTimer"

    const-string/jumbo v2, "root/application/1/clientcontrol/"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 397
    const-string v1, "cfsTrigger"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 399
    const-string v1, "max1toManyRecipients"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 401
    const-string v1, "1toManySelectedTech"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 403
    const-string v1, "displayNotificationSwitch"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 405
    const-string v1, "ftMax1ToManyRecipients"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 407
    const-string/jumbo v1, "serviceAvailabilityInfoExpiry"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 409
    const-string v1, "ftHTTPCapAlwaysOn"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 413
    const-string v1, "ChatbotDirectory"

    const-string/jumbo v2, "root/application/1/messaging/chatbot/"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 415
    const-string v1, "BotinfoFQDNRoot"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 417
    const-string v1, "ChatbotBlacklist"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 419
    const-string v1, "MsgHistorySelectable"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 421
    const-string v1, "SpecificChatbotsList"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 423
    const-string v1, "IdentityInEnrichedSearch"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 425
    const-string v1, "PrivacyDisable"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 427
    const-string v1, "ChatbotMsgTech"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 431
    const-string v1, "MsgStoreUrl"

    const-string/jumbo v2, "root/application/1/messaging/messagestore/"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 433
    const-string v1, "MsgStoreNotifUrl"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 435
    const-string v1, "MsgStoreAuth"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 437
    const-string v1, "MsgStoreUserName"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 439
    const-string v1, "MsgStoreUserPwd"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 443
    const-string/jumbo v1, "root/application/1/messaging/plugins/"

    const-string v2, "catalogURI"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 447
    const-string v1, "fthttpGroupChat"

    const-string/jumbo v2, "root/application/1/serviceproviderext/"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 449
    const-string v1, "chatbot/Username"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 451
    const-string v1, "chatbot/Password"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 455
    const-string/jumbo v1, "root/services/"

    const-string/jumbo v2, "rcsState"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 456
    const-string/jumbo v1, "root/services/"

    const-string/jumbo v2, "rcsDisabledState"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 457
    const-string/jumbo v1, "root/serviceproviderext/"

    const-string/jumbo v2, "spgUrl"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 458
    const-string/jumbo v1, "root/serviceproviderext/"

    const-string/jumbo v2, "params-url"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 462
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 464
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
