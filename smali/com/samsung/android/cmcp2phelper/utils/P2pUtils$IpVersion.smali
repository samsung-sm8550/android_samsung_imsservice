.class final enum Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;
.super Ljava/lang/Enum;
.source "P2pUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;

.field public static final enum IPV4:Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;

.field public static final enum IPV6:Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;
    .locals 2

    .line 36
    sget-object v0, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;->IPV4:Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;

    sget-object v1, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;->IPV6:Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;

    filled-new-array {v0, v1}, [Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;

    const-string v1, "IPV4"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;->IPV4:Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;

    new-instance v0, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;

    const-string v1, "IPV6"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;->IPV6:Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;

    invoke-static {}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;->$values()[Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;->$VALUES:[Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;
    .locals 1

    .line 36
    const-class v0, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;
    .locals 1

    .line 36
    sget-object v0, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;->$VALUES:[Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;

    invoke-virtual {v0}, [Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/cmcp2phelper/utils/P2pUtils$IpVersion;

    return-object v0
.end method
