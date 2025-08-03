.class Lcom/sec/internal/ims/cmstore/utils/ReSyncParam$SingletoneHolder;
.super Ljava/lang/Object;
.source "ReSyncParam.java"


# static fields
.field static final INSTANCE:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;-><init>(Lcom/sec/internal/ims/cmstore/utils/ReSyncParam-IA;)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam$SingletoneHolder;->INSTANCE:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
