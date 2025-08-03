.class public Lcom/sec/internal/constants/ims/core/LinkPropertiesChangedEvent;
.super Ljava/lang/Object;
.source "LinkPropertiesChangedEvent.java"


# instance fields
.field private final mLinkProperties:Landroid/net/LinkProperties;

.field private final mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

.field private final mNetwork:Landroid/net/Network;


# direct methods
.method public constructor <init>(Landroid/net/Network;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;Landroid/net/LinkProperties;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/sec/internal/constants/ims/core/LinkPropertiesChangedEvent;->mNetwork:Landroid/net/Network;

    .line 15
    iput-object p2, p0, Lcom/sec/internal/constants/ims/core/LinkPropertiesChangedEvent;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    .line 16
    iput-object p3, p0, Lcom/sec/internal/constants/ims/core/LinkPropertiesChangedEvent;->mLinkProperties:Landroid/net/LinkProperties;

    return-void
.end method


# virtual methods
.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sec/internal/constants/ims/core/LinkPropertiesChangedEvent;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method public getListener()Lcom/sec/internal/interfaces/ims/core/PdnEventListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/sec/internal/constants/ims/core/LinkPropertiesChangedEvent;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    return-object p0
.end method

.method public getNetwork()Landroid/net/Network;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/sec/internal/constants/ims/core/LinkPropertiesChangedEvent;->mNetwork:Landroid/net/Network;

    return-object p0
.end method
