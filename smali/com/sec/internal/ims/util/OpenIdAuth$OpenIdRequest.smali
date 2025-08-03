.class public Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;
.super Ljava/lang/Object;
.source "OpenIdAuth.java"


# instance fields
.field private final mIsTrustAllCert:Z

.field private final mNetwork:Landroid/net/Network;

.field private final mPhoneId:I

.field private final mUrl:Ljava/lang/String;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsTrustAllCert(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->mIsTrustAllCert:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetwork(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Landroid/net/Network;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUrl(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserAgent(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->mUserAgent:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/net/Network;Ljava/lang/String;Z)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->mPhoneId:I

    .line 33
    iput-object p2, p0, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->mUrl:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->mNetwork:Landroid/net/Network;

    .line 35
    iput-object p4, p0, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->mUserAgent:Ljava/lang/String;

    .line 36
    iput-boolean p5, p0, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->mIsTrustAllCert:Z

    return-void
.end method
