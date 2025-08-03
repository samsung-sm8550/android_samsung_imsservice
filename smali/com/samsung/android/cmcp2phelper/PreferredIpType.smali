.class public final enum Lcom/samsung/android/cmcp2phelper/PreferredIpType;
.super Ljava/lang/Enum;
.source "PreferredIpType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/cmcp2phelper/PreferredIpType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/cmcp2phelper/PreferredIpType;

.field public static final enum IPV4_LOCAL:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

.field public static final enum IPV6_GLOBAL:Lcom/samsung/android/cmcp2phelper/PreferredIpType;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/cmcp2phelper/PreferredIpType;
    .locals 2

    .line 3
    sget-object v0, Lcom/samsung/android/cmcp2phelper/PreferredIpType;->IPV4_LOCAL:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    sget-object v1, Lcom/samsung/android/cmcp2phelper/PreferredIpType;->IPV6_GLOBAL:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    filled-new-array {v0, v1}, [Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 3
    new-instance v0, Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    const-string v1, "IPV4_LOCAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/cmcp2phelper/PreferredIpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcp2phelper/PreferredIpType;->IPV4_LOCAL:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    new-instance v0, Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    const-string v1, "IPV6_GLOBAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/cmcp2phelper/PreferredIpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcp2phelper/PreferredIpType;->IPV6_GLOBAL:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    invoke-static {}, Lcom/samsung/android/cmcp2phelper/PreferredIpType;->$values()[Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcp2phelper/PreferredIpType;->$VALUES:[Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/cmcp2phelper/PreferredIpType;
    .locals 1

    .line 3
    const-class v0, Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/cmcp2phelper/PreferredIpType;
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/android/cmcp2phelper/PreferredIpType;->$VALUES:[Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    invoke-virtual {v0}, [Lcom/samsung/android/cmcp2phelper/PreferredIpType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    return-object v0
.end method
