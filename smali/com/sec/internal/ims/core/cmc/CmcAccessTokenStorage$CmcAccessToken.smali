.class public Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;
.super Ljava/lang/Object;
.source "CmcAccessTokenStorage.java"


# instance fields
.field private final mToken:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;->mToken:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;->mToken:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmcAccessToken [mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
