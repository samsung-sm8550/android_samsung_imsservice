.class public final enum Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;
.super Ljava/lang/Enum;
.source "CmcSettingManagerConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

.field public static final enum DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

.field public static final enum DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

.field public static final enum DEVICE_TYPE_UNDEFINED:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    const-string v1, "DEVICE_TYPE_PD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    .line 13
    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    const-string v2, "DEVICE_TYPE_SD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    .line 14
    new-instance v2, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    const-string v3, "DEVICE_TYPE_UNDEFINED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_UNDEFINED:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    .line 11
    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->$VALUES:[Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;
    .locals 1

    .line 11
    const-class v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;
    .locals 1

    .line 11
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->$VALUES:[Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    invoke-virtual {v0}, [Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    return-object v0
.end method
