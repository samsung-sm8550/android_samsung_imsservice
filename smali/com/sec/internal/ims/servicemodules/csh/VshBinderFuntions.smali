.class public Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;
.super Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub;
.source "VshBinderFuntions.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

.field private final surfaceArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub;-><init>()V

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->surfaceArray:Landroid/util/SparseArray;

    .line 34
    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    return-void
.end method

.method private close(JLandroid/view/Surface;Z)I
    .locals 2

    .line 80
    sget-object p4, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Calling close in initialized state."

    invoke-static {p4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getSession(J)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 88
    const-string p0, "Session is not found"

    invoke-static {p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 92
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->getSessionId()I

    move-result p4

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->surfaceArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->release(Landroid/view/Surface;)V

    .line 94
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->surfaceArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->delete(I)V

    .line 96
    new-instance p4, Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;

    invoke-direct {p4, p3, p2}, Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;-><init>(Landroid/view/Surface;I)V

    .line 98
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object p3

    iget p3, p3, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 99
    sget-object p3, Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;->LOCAL:Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;

    goto :goto_0

    .line 101
    :cond_2
    sget-object p3, Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;->REMOTE:Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;

    .line 104
    :goto_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->getSessionId()I

    move-result p1

    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions$2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions$2;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;)V

    invoke-direct {v0, p1, p3, p4, v1}, Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/VshViewType;Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;)V

    .line 115
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->resetVshVideoDisplay(Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;)V

    return p2
.end method

.method private open(JLandroid/view/Surface;IIII)I
    .locals 0

    .line 39
    sget-object p4, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->LOG_TAG:Ljava/lang/String;

    const-string p5, "Calling open in initialized state."

    invoke-static {p4, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p5, 0x0

    cmp-long p5, p1, p5

    if-ltz p5, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 46
    :cond_0
    iget-object p5, p0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {p5, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getSession(J)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 48
    const-string p1, "Session is not found"

    invoke-static {p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->release(Landroid/view/Surface;)V

    return p2

    .line 53
    :cond_1
    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->surfaceArray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->getSessionId()I

    move-result p5

    invoke-virtual {p4, p5, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    new-instance p4, Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;

    invoke-direct {p4, p3, p7}, Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;-><init>(Landroid/view/Surface;I)V

    .line 57
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object p3

    iget p3, p3, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    const/4 p5, 0x1

    if-ne p3, p5, :cond_2

    .line 58
    sget-object p3, Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;->LOCAL:Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;

    goto :goto_0

    .line 60
    :cond_2
    sget-object p3, Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;->REMOTE:Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;

    .line 63
    :goto_0
    new-instance p5, Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->getSessionId()I

    move-result p1

    new-instance p6, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions$1;

    invoke-direct {p6, p0}, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions$1;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;)V

    invoke-direct {p5, p1, p3, p4, p6}, Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/VshViewType;Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;)V

    .line 74
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {p0, p5}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->setVshVideoDisplay(Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;)V

    return p2

    .line 42
    :cond_3
    :goto_1
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->release(Landroid/view/Surface;)V

    const/4 p0, -0x1

    return p0
.end method

.method private release(Landroid/view/Surface;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    :cond_0
    return-void
.end method


# virtual methods
.method public closeVshSource(JLandroid/view/Surface;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->close(JLandroid/view/Surface;Z)I

    move-result p1

    .line 130
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->release(Landroid/view/Surface;)V

    return p1
.end method

.method public openVshSource(JLandroid/view/Surface;IIII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->open(JLandroid/view/Surface;IIII)I

    move-result p0

    return p0
.end method

.method public setOrientationListenerType(II)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    .line 151
    sget-object p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->LANDSCAPE:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    goto :goto_0

    .line 148
    :cond_0
    sget-object p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->REVERSE_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    goto :goto_0

    .line 145
    :cond_1
    sget-object p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->FLIPPED_LANDSCAPE:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    goto :goto_0

    .line 142
    :cond_2
    sget-object p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    goto :goto_0

    .line 139
    :cond_3
    sget-object p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->LANDSCAPE:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    .line 154
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->setVshPhoneOrientation(Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;)V

    const/4 p0, 0x0

    return p0
.end method
