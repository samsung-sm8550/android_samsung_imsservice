.class public abstract Lcom/sec/internal/ims/util/UriGenerator;
.super Ljava/lang/Object;
.source "UriGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract extractOwnAreaCode(Ljava/lang/String;)V
.end method

.method public abstract getNetworkPreferredUri(Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
.end method

.method public abstract getNetworkPreferredUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
.end method

.method public abstract getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
.end method

.method public abstract getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
.end method

.method public abstract getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
.end method

.method public abstract getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
.end method

.method public abstract getNetworkPreferredUri(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
.end method

.method public abstract getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Ljava/util/Set;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNetworkPreferredUri(Ljava/util/Set;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNormalizedUri(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
.end method

.method public abstract getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;
.end method

.method public abstract getPhoneId()I
.end method

.method public abstract getUssdRuri(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
.end method

.method public abstract normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
.end method

.method public abstract swapUriType(Ljava/util/List;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateNetworkPreferredUriType(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri$UriType;)V
.end method

.method public abstract updateRat(I)V
.end method
