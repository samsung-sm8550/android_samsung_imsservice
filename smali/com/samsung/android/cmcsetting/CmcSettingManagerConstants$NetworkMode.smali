.class public final enum Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;
.super Ljava/lang/Enum;
.source "CmcSettingManagerConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

.field public static final enum NETWORK_MODE_UNDEFINED:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

.field public static final enum NETWORK_MODE_USE_MOBILE_NETWORK:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

.field public static final enum NETWORK_MODE_WIFI_ONLY:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 18
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    const-string v1, "NETWORK_MODE_USE_MOBILE_NETWORK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;->NETWORK_MODE_USE_MOBILE_NETWORK:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    .line 19
    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    const-string v2, "NETWORK_MODE_WIFI_ONLY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;->NETWORK_MODE_WIFI_ONLY:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    .line 20
    new-instance v2, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    const-string v3, "NETWORK_MODE_UNDEFINED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;->NETWORK_MODE_UNDEFINED:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    .line 17
    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;->$VALUES:[Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;
    .locals 1

    .line 17
    const-class v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;
    .locals 1

    .line 17
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;->$VALUES:[Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    invoke-virtual {v0}, [Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    return-object v0
.end method
