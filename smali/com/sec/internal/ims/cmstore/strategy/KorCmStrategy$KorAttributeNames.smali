.class public Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy$KorAttributeNames;
.super Lcom/sec/internal/constants/ims/cmstore/data/AttributeNames;
.source "KorCmStrategy.java"


# static fields
.field public static conversation_id:Ljava/lang/String; = "Conversation-ID"

.field public static extended_messaging:Ljava/lang/String; = "ExtendedMessaging"

.field public static extended_rcs:Ljava/lang/String; = "ExtendedRCS"

.field public static p_asserted_service:Ljava/lang/String; = "P-Asserted-Service"

.field public static safety:Ljava/lang/String; = "Safety"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 623
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/cmstore/data/AttributeNames;-><init>()V

    return-void
.end method
