.class public final Lokhttp3/internal/platform/OpenJSSEPlatform$Companion;
.super Ljava/lang/Object;
.source "OpenJSSEPlatform.kt"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lokhttp3/internal/platform/OpenJSSEPlatform$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildIfSupported()Lokhttp3/internal/platform/OpenJSSEPlatform;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lokhttp3/internal/platform/OpenJSSEPlatform$Companion;->isSupported()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance p0, Lokhttp3/internal/platform/OpenJSSEPlatform;

    invoke-direct {p0, v0}, Lokhttp3/internal/platform/OpenJSSEPlatform;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p0

    :cond_0
    return-object v0
.end method

.method public final isSupported()Z
    .locals 0

    .line 89
    invoke-static {}, Lokhttp3/internal/platform/OpenJSSEPlatform;->access$isSupported$cp()Z

    move-result p0

    return p0
.end method
