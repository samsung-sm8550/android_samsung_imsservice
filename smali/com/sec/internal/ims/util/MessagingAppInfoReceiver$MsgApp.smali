.class public final enum Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;
.super Ljava/lang/Enum;
.source "MessagingAppInfoReceiver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

.field public static final enum ANDROID_MESSAGE:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

.field public static final enum ETC:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

.field public static final enum SAMSUNG_MESSAGE:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;
    .locals 3

    .line 34
    sget-object v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;->SAMSUNG_MESSAGE:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    sget-object v1, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;->ANDROID_MESSAGE:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    sget-object v2, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;->ETC:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    const-string v1, "SAMSUNG_MESSAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;->SAMSUNG_MESSAGE:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    .line 36
    new-instance v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    const-string v1, "ANDROID_MESSAGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;->ANDROID_MESSAGE:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    .line 37
    new-instance v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    const-string v1, "ETC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;->ETC:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    .line 34
    invoke-static {}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;->$values()[Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;->$VALUES:[Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;
    .locals 1

    .line 34
    const-class v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;
    .locals 1

    .line 34
    sget-object v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;->$VALUES:[Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    return-object v0
.end method
