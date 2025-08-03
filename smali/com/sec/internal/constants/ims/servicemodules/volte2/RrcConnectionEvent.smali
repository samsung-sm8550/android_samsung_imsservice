.class public Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;
.super Ljava/lang/Object;
.source "RrcConnectionEvent.java"


# instance fields
.field mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;


# direct methods
.method public constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    return-void
.end method


# virtual methods
.method public getEvent()Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    return-object p0
.end method
