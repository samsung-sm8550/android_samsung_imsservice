.class Lcom/sec/internal/ims/servicemodules/sms/SmsLogger$SingletoneHolder;
.super Ljava/lang/Object;
.source "SmsLogger.java"


# static fields
.field static final INSTANCE:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger$SingletoneHolder;->INSTANCE:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
