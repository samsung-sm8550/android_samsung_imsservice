.class public final Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces$SoftphoneCallHandling;
.super Ljava/lang/Object;
.source "SoftphoneNamespaces.java"


# static fields
.field public static final ACTIONS:Ljava/lang/String; = "actions"

.field public static final ACTIVE:Ljava/lang/String; = "active"

.field public static final COMMON_POLICY_NS_PREFIX:Ljava/lang/String; = "cp"

.field public static final COMMUNICATION_DIVERSION:Ljava/lang/String; = "communication-diversion"

.field public static final COMMUNICATION_WAITING:Ljava/lang/String; = "communication-waiting"

.field public static final CONDITIONS:Ljava/lang/String; = "conditions"

.field public static final DEACTIVATED:Ljava/lang/String; = "rule-deactivated"

.field public static final FORWARD_TO:Ljava/lang/String; = "forward-to"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final NO_REPLY_TIMER:Ljava/lang/String; = "NoReplyTimer"

.field public static final RULE:Ljava/lang/String; = "rule"

.field public static final RULESET:Ljava/lang/String; = "ruleset"

.field public static final SUPPLEMENTARY_SERVICE_NS_PREFIX:Ljava/lang/String; = "ss"

.field public static final TARGET:Ljava/lang/String; = "target"

.field public static final XML_CHARSET:Ljava/lang/String; = "UTF-8"

.field public static final XML_VERSION:Ljava/lang/String; = "1.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCondition(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    .line 257
    const-string/jumbo p0, "unknown"

    return-object p0

    .line 255
    :cond_0
    const-string p0, "not-registered"

    return-object p0

    .line 253
    :cond_1
    const-string p0, "not-reachable"

    return-object p0

    .line 251
    :cond_2
    const-string p0, "no-answer"

    return-object p0

    .line 249
    :cond_3
    const-string p0, "busy"

    return-object p0

    .line 247
    :cond_4
    const-string/jumbo p0, "unconditional"

    return-object p0
.end method

.method public static getId(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    .line 240
    const-string/jumbo p0, "unknown"

    return-object p0

    .line 238
    :cond_0
    const-string p0, "call-diversion-not-logged-in"

    return-object p0

    .line 236
    :cond_1
    const-string p0, "call-diversion-not-reachable"

    return-object p0

    .line 234
    :cond_2
    const-string p0, "call-diversion-no-reply"

    return-object p0

    .line 232
    :cond_3
    const-string p0, "call-diversion-busy"

    return-object p0

    .line 230
    :cond_4
    const-string p0, "call-diversion-unconditional"

    return-object p0
.end method
