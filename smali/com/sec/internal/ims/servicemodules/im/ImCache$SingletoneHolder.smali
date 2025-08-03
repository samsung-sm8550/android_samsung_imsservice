.class Lcom/sec/internal/ims/servicemodules/im/ImCache$SingletoneHolder;
.super Ljava/lang/Object;
.source "ImCache.java"


# static fields
.field static final INSTANCE:Lcom/sec/internal/ims/servicemodules/im/ImCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 170
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache$SingletoneHolder;->INSTANCE:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
