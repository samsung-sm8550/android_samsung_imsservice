.class Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener$SingletoneHolder;
.super Ljava/lang/Object;
.source "McsFcmEventListener.java"


# static fields
.field static final INSTANCE:Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;

    invoke-direct {v0}, Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener$SingletoneHolder;->INSTANCE:Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
