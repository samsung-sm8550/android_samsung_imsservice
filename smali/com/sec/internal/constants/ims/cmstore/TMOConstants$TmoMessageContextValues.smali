.class public Lcom/sec/internal/constants/ims/cmstore/TMOConstants$TmoMessageContextValues;
.super Lcom/sec/internal/constants/ims/cmstore/data/MessageContextValues;
.source "TMOConstants.java"


# static fields
.field public static final chatMessage:Ljava/lang/String; = "X-RCS-Chat"

.field public static final fileMessage:Ljava/lang/String; = "X-RCS-FT"

.field public static final greetingvoice:Ljava/lang/String; = "x-voice-grtng"

.field public static final gsomessage:Ljava/lang/String; = "X-RCS-Chat-GSO"

.field public static final gsosession:Ljava/lang/String; = "X-RCS-Chat-Session"

.field public static final imdnMessage:Ljava/lang/String; = "imdn-message"

.field public static final standaloneMessageLLM:Ljava/lang/String; = "X-RCS-LM"

.field public static final standaloneMessagePager:Ljava/lang/String; = "X-RCS-PM"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/cmstore/data/MessageContextValues;-><init>()V

    return-void
.end method
