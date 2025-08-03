.class public Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;
.super Ljava/lang/Object;
.source "AkaAuth.java"


# instance fields
.field mAuthKey:Ljava/lang/String;

.field mEncrKey:Ljava/lang/String;

.field mRes:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;->mRes:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;->mEncrKey:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;->mAuthKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAuthKey()Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;->mAuthKey:Ljava/lang/String;

    return-object p0
.end method

.method public getEncrKey()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;->mEncrKey:Ljava/lang/String;

    return-object p0
.end method

.method public getRes()Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;->mRes:Ljava/lang/String;

    return-object p0
.end method
