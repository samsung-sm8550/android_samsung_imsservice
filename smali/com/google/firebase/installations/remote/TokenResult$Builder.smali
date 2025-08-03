.class public abstract Lcom/google/firebase/installations/remote/TokenResult$Builder;
.super Ljava/lang/Object;
.source "TokenResult.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/google/firebase/installations/remote/TokenResult;
.end method

.method public abstract setResponseCode(Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;)Lcom/google/firebase/installations/remote/TokenResult$Builder;
.end method

.method public abstract setToken(Ljava/lang/String;)Lcom/google/firebase/installations/remote/TokenResult$Builder;
.end method

.method public abstract setTokenExpirationTimestamp(J)Lcom/google/firebase/installations/remote/TokenResult$Builder;
.end method
