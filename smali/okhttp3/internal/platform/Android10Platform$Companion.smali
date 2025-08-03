.class public final Lokhttp3/internal/platform/Android10Platform$Companion;
.super Ljava/lang/Object;
.source "Android10Platform.kt"


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
    invoke-direct {p0}, Lokhttp3/internal/platform/Android10Platform$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildIfSupported()Lokhttp3/internal/platform/Platform;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lokhttp3/internal/platform/Android10Platform$Companion;->isSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lokhttp3/internal/platform/Android10Platform;

    invoke-direct {p0}, Lokhttp3/internal/platform/Android10Platform;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final isSupported()Z
    .locals 0

    .line 67
    invoke-static {}, Lokhttp3/internal/platform/Android10Platform;->access$isSupported$cp()Z

    move-result p0

    return p0
.end method
