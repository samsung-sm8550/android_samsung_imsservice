.class public Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;
.super Ljava/lang/Object;
.source "RttSettingObserver.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static NAME:Ljava/lang/String;

.field private static rttSettingDb:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field public mRttSettingObserver:Landroid/database/ContentObserver;

.field private mVsm:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVsm(Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;)Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->mVsm:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetrttSettingDb()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->rttSettingDb:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->NAME:Ljava/lang/String;

    .line 13
    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->LOG_TAG:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "preferred_rtt_mode"

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->rttSettingDb:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->mVsm:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 33
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver$1;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->mRttSettingObserver:Landroid/database/ContentObserver;

    .line 19
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->mVsm:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    return-void
.end method

.method private registerRttSettingObserver(Landroid/content/Context;)V
    .locals 2

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->rttSettingDb:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->mRttSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 25
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->registerRttSettingObserver(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
