.class public Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;
.super Ljava/lang/Object;
.source "VideoDisplay.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/csh/event/IVideoDisplay;


# instance fields
.field private final mColor:I

.field private final mWindowHandle:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;I)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;->mWindowHandle:Landroid/view/Surface;

    .line 38
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;->mColor:I

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 0

    .line 51
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;->mColor:I

    return p0
.end method

.method public getWindowHandle()Landroid/view/Surface;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;->mWindowHandle:Landroid/view/Surface;

    return-object p0
.end method
