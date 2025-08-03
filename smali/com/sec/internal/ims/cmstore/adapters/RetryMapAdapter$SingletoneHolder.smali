.class Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter$SingletoneHolder;
.super Ljava/lang/Object;
.source "RetryMapAdapter.java"


# static fields
.field static final INSTANCE:Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter$SingletoneHolder;->INSTANCE:Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
