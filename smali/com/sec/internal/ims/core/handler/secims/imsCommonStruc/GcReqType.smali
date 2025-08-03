.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/GcReqType;
.super Ljava/lang/Object;
.source "GcReqType.java"


# static fields
.field public static final ADD_PARTICIPANTS:I = 0x0

.field public static final CHANGE_CHAT_ICON:I = 0x5

.field public static final CHANGE_CHAT_SUBJECT:I = 0x4

.field public static final CHANGE_LEADER:I = 0x2

.field public static final CHANGE_USER_ALIAS:I = 0x3

.field public static final REMOVE_PARTICIPANTS:I = 0x1

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 14
    const-string v4, "CHANGE_CHAT_SUBJECT"

    const-string v5, "CHANGE_CHAT_ICON"

    const-string v0, "ADD_PARTICIPANTS"

    const-string v1, "REMOVE_PARTICIPANTS"

    const-string v2, "CHANGE_LEADER"

    const-string v3, "CHANGE_USER_ALIAS"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/GcReqType;->names:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/GcReqType;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
