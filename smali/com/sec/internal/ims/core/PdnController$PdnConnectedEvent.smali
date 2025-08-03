.class public Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;
.super Ljava/lang/Object;
.source "PdnController.java"


# instance fields
.field private mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

.field private mNetwork:Landroid/net/Network;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;)Lcom/sec/internal/interfaces/ims/core/PdnEventListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetwork(Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;)Landroid/net/Network;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;Landroid/net/Network;)V
    .locals 0

    .line 1460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1461
    iput-object p1, p0, Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    .line 1462
    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;->mNetwork:Landroid/net/Network;

    return-void
.end method
