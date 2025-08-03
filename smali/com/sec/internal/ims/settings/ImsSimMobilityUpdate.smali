.class public Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;
.super Ljava/lang/Object;
.source "ImsSimMobilityUpdate.java"


# static fields
.field private static final ALLOW_LIST:Ljava/lang/String; = "simmobility_allowlist"

.field private static final BLOCK_LIST:Ljava/lang/String; = "simmobility_blocklist"

.field private static final RCS_ALLOW_LIST:Ljava/lang/String; = "simmobility_allowlist_rcs"

.field private static final RCS_BLOCK_LIST:Ljava/lang/String; = "simmobility_blocklist_rcs"

.field private static final SIMMOBILITY_UPDATE:Ljava/lang/String; = "simmobility_update"

.field private static final TAG:Ljava/lang/String; = "ImsSimMobilityUpdate"

.field private static volatile mInstance:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;


# direct methods
.method public static synthetic $r8$lambda$9gQmhH8tXu86VVtULvUFcLvm1tc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->lambda$checkAllowListForSimMobility$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eCiRqyGkuSK940Jtbqwvk4i7nD4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->lambda$checkAllowListForSimMobility$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const/16 v2, 0xc8

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method

.method public static checkAllowListForSimMobility([Ljava/lang/String;[Ljava/lang/String;I)Z
    .locals 5

    .line 177
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {}, Lcom/sec/internal/constants/Mno;->getRegionOfDevice()Lcom/sec/internal/constants/Mno$Region;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    sget-object v2, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAllowListForSimMobility : deviceRegion ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], OMC_CODE ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 185
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v3, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v0}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 186
    const-string p0, "No mobility condition by blockList"

    invoke-static {v2, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate$$ExternalSyntheticLambda1;

    invoke-direct {p1, v1, v0}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 188
    const-string p0, "SimMobility enabled by allowlist"

    invoke-static {v2, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;
    .locals 2

    .line 59
    sget-object v0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mInstance:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    if-nez v0, :cond_1

    .line 60
    const-class v0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mInstance:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mInstance:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 64
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 66
    :cond_1
    :goto_2
    sget-object p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mInstance:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    return-object p0
.end method

.method public static isAllowSimMobilityByImsprofile(Lcom/sec/ims/settings/ImsProfile;I)Z
    .locals 5

    .line 159
    const-string/jumbo v0, "simmobility_allowlist"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 160
    const-string/jumbo v2, "simmobility_blocklist"

    invoke-virtual {p0, v2}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 162
    sget-object v2, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAllowSimMobilityByImsprofile : Profile Name ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 164
    invoke-static {v0, v1, p1}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->checkAllowListForSimMobility([Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static isAllowSimMobilityByImsprofileForRcs(Lcom/sec/ims/settings/ImsProfile;I)Z
    .locals 5

    .line 168
    const-string/jumbo v0, "simmobility_allowlist_rcs"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 169
    const-string/jumbo v2, "simmobility_blocklist_rcs"

    invoke-virtual {p0, v2}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 171
    sget-object v2, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAllowSimMobilityByImsprofileForRcs : Profile Name ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 173
    invoke-static {v0, v1, p1}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->checkAllowListForSimMobility([Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$checkAllowListForSimMobility$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 185
    const-string v0, "*"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$checkAllowListForSimMobility$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 187
    const-string v0, "*"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private makeUpdatedProfile(Lcom/sec/ims/settings/ImsProfile;Lcom/google/gson/JsonObject;)Lcom/sec/ims/settings/ImsProfile;
    .locals 3

    .line 70
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 71
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    .line 75
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 77
    sget-object v1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "profile cannot parse result"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 81
    :goto_0
    const-class v0, Lcom/google/gson/JsonElement;

    invoke-static {p0, v0}, Lcom/sec/internal/helper/JsonUtil;->deepCopy(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    if-nez p2, :cond_0

    .line 84
    sget-object p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "object profiles is null."

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 88
    :cond_0
    sget-object v1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 90
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz v0, :cond_1

    .line 91
    sget-object p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sim mobility imsprofile update : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {v0, p2}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 95
    :cond_1
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 96
    sget-object p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "updatedProf is null"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 99
    :cond_2
    new-instance p0, Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private mergeProfiles(Lcom/google/gson/JsonObject;Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/settings/ImsProfile;
    .locals 2

    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 244
    :try_start_0
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->makeUpdatedProfile(Lcom/sec/ims/settings/ImsProfile;Lcom/google/gson/JsonObject;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 247
    sget-object p1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating mobility profile failed.return original profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 247
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p2
.end method


# virtual methods
.method public dump()V
    .locals 2

    .line 256
    sget-object v0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string v1, "\nDump of ImsSimMobilityUpdate:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    return-void
.end method

.method public isSimMobilityAllowedByCarrier(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 4

    .line 202
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object p0

    .line 203
    const-string/jumbo v0, "simmobility_allowlist"

    invoke-virtual {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    const-string/jumbo v1, "simmobility_blocklist"

    invoke-virtual {p1, v1}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 214
    :cond_0
    const-string/jumbo v1, "persist.ims.simmobility"

    const/4 v3, -0x1

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 217
    sget-object p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string p1, "SimMobility Feature is Enabled"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 221
    :cond_1
    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 224
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 227
    :cond_3
    sget-object p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string p1, "SimMobility enabled by allowlist"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 222
    :cond_4
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string p1, "No mobility condition"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public overrideGlobalSettingsForSimMobilityUpdateOnDemand(Lcom/google/gson/JsonElement;I)Lcom/google/gson/JsonElement;
    .locals 4

    .line 144
    const-string/jumbo v0, "simmobility_update"

    sget-object v1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "overrideGlobalSettingsForSimMobilityUpdateOnDemand"

    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 146
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 148
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update SimMobility GlobalSettings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda22;

    invoke-direct {v3}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda22;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {p0, p2, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 150
    invoke-static {p1, v0}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 153
    sget-object p2, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to overrideGlobalSettingsForSimMobilityUpdateOnDemand : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object p1
.end method

.method public overrideImsProfileForSimMobilityUpdateOnDemand(Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;
    .locals 6

    .line 106
    sget-object v0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "overrideImsProfileForSimMobilityUpdateOnDemand"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/sec/internal/helper/SimUtil;->isSimMobilityAvailable(Landroid/content/Context;ILcom/sec/internal/constants/Mno;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 109
    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    invoke-static {p1, p2}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->isAllowSimMobilityByImsprofile(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v1

    .line 111
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->activeSimMobility(Z)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    move v1, v2

    .line 114
    :goto_0
    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    invoke-static {p1, p2}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->isAllowSimMobilityByImsprofileForRcs(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v2

    .line 116
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->activeSimMobilityForRcs(Z)V

    :cond_1
    move v5, v2

    move v2, v1

    move v1, v5

    goto :goto_1

    :cond_2
    move v1, v2

    .line 120
    :goto_1
    invoke-virtual {p1, v2}, Lcom/sec/ims/settings/ImsProfile;->setSimMobility(Z)V

    .line 121
    invoke-virtual {p1, v1}, Lcom/sec/ims/settings/ImsProfile;->setSimMobilityForRcs(Z)V

    if-nez v2, :cond_3

    .line 124
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not support SimMobility for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 128
    :cond_3
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getSimMobilityUpdate()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getSimMobilityUpdate()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 129
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getSimMobilityUpdate()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update SimMobility ImsProfile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda22;

    invoke-direct {v4}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda22;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-virtual {v1, p2, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 132
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mergeProfiles(Lcom/google/gson/JsonObject;Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_4
    return-object p1

    .line 137
    :goto_2
    sget-object p2, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to overrideImsProfileForSimMobilityUpdateOnDemand : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method
