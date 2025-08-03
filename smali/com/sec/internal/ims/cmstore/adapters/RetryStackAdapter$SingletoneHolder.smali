.class Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter$SingletoneHolder;
.super Ljava/lang/Object;
.source "RetryStackAdapter.java"


# static fields
.field static final INSTANCE:Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter$SingletoneHolder;->INSTANCE:Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
