.class Lcom/sec/internal/google/SecImsNotifier$SingletoneHolder;
.super Ljava/lang/Object;
.source "SecImsNotifier.java"


# static fields
.field static final INSTANCE:Lcom/sec/internal/google/SecImsNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Lcom/sec/internal/google/SecImsNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/google/SecImsNotifier;-><init>(Lcom/sec/internal/google/SecImsNotifier-IA;)V

    sput-object v0, Lcom/sec/internal/google/SecImsNotifier$SingletoneHolder;->INSTANCE:Lcom/sec/internal/google/SecImsNotifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
