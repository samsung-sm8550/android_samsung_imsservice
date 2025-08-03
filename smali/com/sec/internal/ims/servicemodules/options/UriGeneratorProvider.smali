.class public Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;
.super Landroid/content/ContentProvider;
.source "UriGeneratorProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.rcs.urigenerator.provider"

.field private static final DEFAULT_COUNTRY_CODE:Ljava/lang/String; = "US"

.field private static final DEFAULT_MCC:Ljava/lang/String; = "310"

.field private static final HANDLE_EVENT_ADS_CHANGED:I = 0x1

.field private static final IMS_REGISTRATION_INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final LOG_TAG:Ljava/lang/String;

.field static final N_IMS:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

.field static sMatcher:Landroid/content/UriMatcher;


# instance fields
.field mContext:Landroid/content/Context;

.field private mCountryCode:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mImsIntentReceiver:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$ImsIntentReceiver;

.field private mMcc:Ljava/lang/String;

.field mOwnAreaCode:Ljava/lang/String;

.field private mSimEventListener:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimEventListener;

.field private mSimIntentReceiver:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;

.field mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSimEventListener(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;)Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimEventListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mSimEventListener:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 40
    const-class v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.ims.action.IMS_REGISTRATION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->IMS_REGISTRATION_INTENT_FILTER:Landroid/content/IntentFilter;

    .line 58
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->sMatcher:Landroid/content/UriMatcher;

    .line 61
    const-string v1, "ims/*"

    const/4 v2, 0x1

    const-string v3, "com.samsung.rcs.urigenerator.provider"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    const-string v0, "_id"

    const-string v1, "generated_uri"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 74
    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimEventListener;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimEventListener;-><init>(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimEventListener-IA;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mSimEventListener:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimEventListener;

    .line 76
    const-string v1, "310"

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mMcc:Ljava/lang/String;

    .line 77
    const-string v1, "US"

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mCountryCode:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mHandler:Landroid/os/Handler;

    .line 79
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 159
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "delete not supported!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method extractOwnAreaCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 258
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractOwnAreaCode phoneNumber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eqz p1, :cond_1

    .line 259
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 260
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mMcc:Ljava/lang/String;

    .line 264
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    sget-object v2, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    const-string v3, "extractOwnAreaCode. mcc is not int"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 269
    :goto_0
    invoke-static {v2}, Lcom/sec/internal/helper/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 270
    sget-object v3, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractOwnAreaCode tmpCountryCode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " operator "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    .line 273
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mCountryCode:Ljava/lang/String;

    .line 276
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractOwnAreaCode MCC "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mMcc:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Country "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isUSA()Z

    move-result p1

    const-string v2, ""

    if-nez p1, :cond_2

    .line 280
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mOwnAreaCode:Ljava/lang/String;

    .line 281
    sget-object p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    const-string p1, "extractOwnAreaCode: KOR operator not use OwnAreaCode"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_5

    .line 285
    :try_start_1
    const-string p1, "+1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    const/4 v0, 0x5

    .line 286
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mOwnAreaCode:Ljava/lang/String;

    goto :goto_1

    .line 287
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0xb

    if-ne p1, v3, :cond_4

    const/4 p1, 0x1

    const/4 v0, 0x4

    .line 288
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mOwnAreaCode:Ljava/lang/String;

    goto :goto_1

    .line 289
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0xa

    if-ne p1, v3, :cond_5

    .line 290
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mOwnAreaCode:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 293
    :catch_1
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mOwnAreaCode:Ljava/lang/String;

    :cond_5
    :goto_1
    return-void
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 164
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getType not supported!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 169
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "insert not supported!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreate()Z
    .locals 5

    .line 87
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mContext:Landroid/content/Context;

    .line 93
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;-><init>(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mSimIntentReceiver:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;

    .line 94
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$ImsIntentReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$ImsIntentReceiver;-><init>(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$ImsIntentReceiver-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mImsIntentReceiver:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$ImsIntentReceiver;

    .line 95
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "ADSSimHandler"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 96
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 97
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$simEventHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$simEventHandler;-><init>(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mHandler:Landroid/os/Handler;

    .line 99
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mSimIntentReceiver:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mImsIntentReceiver:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$ImsIntentReceiver;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->IMS_REGISTRATION_INTENT_FILTER:Landroid/content/IntentFilter;

    const/4 v4, 0x4

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 101
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->registerForADSChange(Landroid/os/Handler;ILjava/lang/Object;)V

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 107
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p2

    .line 108
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    const/4 p4, 0x1

    sub-int/2addr p3, p4

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 109
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result p3

    .line 111
    sget-object p5, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "query() - uri: %s, number: %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    if-ne p1, p4, :cond_6

    .line 117
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result p1

    .line 116
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 119
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    const/4 v0, 0x7

    if-ne p4, v0, :cond_0

    const-string p4, "+"

    invoke-virtual {p2, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 120
    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mOwnAreaCode:Ljava/lang/String;

    if-eqz p4, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo p4, "support_7digit_msg"

    invoke-interface {p1, p4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mOwnAreaCode:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "local number format, adding own area code "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "query()  mCountryCode "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " MCC "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mMcc:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " CountryCode "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mCountryCode:Ljava/lang/String;

    invoke-static {p2, p0}, Lcom/sec/internal/helper/UriUtil;->parseNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "query(), telUri = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 130
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object p1

    sget-object p4, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {p1, p4}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object p1

    .line 131
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 133
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "converting "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p4, "to"

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p5, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, p1

    .line 137
    :cond_2
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    const-string p1, "*"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "#"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 138
    :cond_3
    const-string/jumbo p0, "query() - KOR startswith *# return null"

    invoke-static {p5, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, p3

    :cond_4
    if-eqz p0, :cond_5

    .line 142
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p3

    .line 144
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "query() - generated uri: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p5, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance p0, Landroid/database/MatrixCursor;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 148
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 147
    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p0

    .line 153
    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Unsupported URI!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 174
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "update not supported!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
