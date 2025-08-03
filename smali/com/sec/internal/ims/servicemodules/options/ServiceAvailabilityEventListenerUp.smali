.class public Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;
.super Ljava/lang/Object;
.source "ServiceAvailabilityEventListenerUp.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;


# static fields
.field private static final EVT_UPDATE_CAP_TIMESTAMP:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ServiceAvailabilityEventListenerUp"


# instance fields
.field private final mCapabilitiesList:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

.field private final mHandler:Landroid/os/Handler;

.field private final mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCapabilitiesList(Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->mCapabilitiesList:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUriGenerator(Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;)Lcom/sec/internal/ims/util/UriGenerator;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;Lcom/sec/internal/ims/util/UriGenerator;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {p2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->mCapabilitiesList:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    .line 50
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 51
    new-instance p2, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$1;

    invoke-direct {p2, p0, p1}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$1;-><init>(Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onServiceAvailabilityUpdate(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$ServiceAvailabilityUpdateData;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$ServiceAvailabilityUpdateData;-><init>(Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;Ljava/util/Date;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
