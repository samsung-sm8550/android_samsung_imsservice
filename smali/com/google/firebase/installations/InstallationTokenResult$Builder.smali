.class public abstract Lcom/google/firebase/installations/InstallationTokenResult$Builder;
.super Ljava/lang/Object;
.source "InstallationTokenResult.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/google/firebase/installations/InstallationTokenResult;
.end method

.method public abstract setToken(Ljava/lang/String;)Lcom/google/firebase/installations/InstallationTokenResult$Builder;
.end method

.method public abstract setTokenCreationTimestamp(J)Lcom/google/firebase/installations/InstallationTokenResult$Builder;
.end method

.method public abstract setTokenExpirationTimestamp(J)Lcom/google/firebase/installations/InstallationTokenResult$Builder;
.end method
