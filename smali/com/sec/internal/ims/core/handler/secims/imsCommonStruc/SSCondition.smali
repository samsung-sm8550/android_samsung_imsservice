.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SSCondition;
.super Ljava/lang/Object;
.source "SSCondition.java"


# static fields
.field public static final CONDITION_ANONYMOUS:I = 0x4

.field public static final CONDITION_BUSY:I = 0x0

.field public static final CONDITION_COMMUNICATINO_DIVERTED:I = 0xd

.field public static final CONDITION_EXTERNAL_LIST:I = 0xa

.field public static final CONDITION_IDENTITY:I = 0x3

.field public static final CONDITION_INTERNATIONAL:I = 0xf

.field public static final CONDITION_INTERNATIONAL_EXHC:I = 0x10

.field public static final CONDITION_MEDIA:I = 0x7

.field public static final CONDITION_NOREPLYTIMER:I = 0x11

.field public static final CONDITION_NOT_LOGGED_IN:I = 0x12

.field public static final CONDITION_NOT_REACHABLE:I = 0xc

.field public static final CONDITION_NOT_REGISTERED:I = 0x1

.field public static final CONDITION_NO_ANSWER:I = 0x8

.field public static final CONDITION_OTHER_IDENTITY:I = 0xb

.field public static final CONDITION_PRESENCE_STATUS:I = 0x2

.field public static final CONDITION_ROAMING:I = 0xe

.field public static final CONDITION_RULE_DEATIVATED:I = 0x9

.field public static final CONDITION_SPHERE:I = 0x5

.field public static final CONDITION_VALIDITY:I = 0x6

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 27
    const-string v17, "CONDITION_NOREPLYTIMER"

    const-string v18, "CONDITION_NOT_LOGGED_IN"

    const-string v0, "CONDITION_BUSY"

    const-string v1, "CONDITION_NOT_REGISTERED"

    const-string v2, "CONDITION_PRESENCE_STATUS"

    const-string v3, "CONDITION_IDENTITY"

    const-string v4, "CONDITION_ANONYMOUS"

    const-string v5, "CONDITION_SPHERE"

    const-string v6, "CONDITION_VALIDITY"

    const-string v7, "CONDITION_MEDIA"

    const-string v8, "CONDITION_NO_ANSWER"

    const-string v9, "CONDITION_RULE_DEATIVATED"

    const-string v10, "CONDITION_EXTERNAL_LIST"

    const-string v11, "CONDITION_OTHER_IDENTITY"

    const-string v12, "CONDITION_NOT_REACHABLE"

    const-string v13, "CONDITION_COMMUNICATINO_DIVERTED"

    const-string v14, "CONDITION_ROAMING"

    const-string v15, "CONDITION_INTERNATIONAL"

    const-string v16, "CONDITION_INTERNATIONAL_EXHC"

    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SSCondition;->names:[Ljava/lang/String;

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

    .line 29
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SSCondition;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
