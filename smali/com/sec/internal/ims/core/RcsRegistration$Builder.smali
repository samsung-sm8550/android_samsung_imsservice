.class public Lcom/sec/internal/ims/core/RcsRegistration$Builder;
.super Ljava/lang/Object;
.source "RcsRegistration.java"


# instance fields
.field private mPassword:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPassword(Lcom/sec/internal/ims/core/RcsRegistration$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RcsRegistration$Builder;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/internal/ims/core/RcsRegistration;
    .locals 1

    .line 35
    new-instance v0, Lcom/sec/internal/ims/core/RcsRegistration;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RcsRegistration;-><init>(Lcom/sec/internal/ims/core/RcsRegistration$Builder;)V

    return-object v0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/sec/internal/ims/core/RcsRegistration$Builder;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/sec/internal/ims/core/RcsRegistration$Builder;->mPassword:Ljava/lang/String;

    return-object p0
.end method
