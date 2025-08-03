.class public Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;
.super Ljava/lang/Object;
.source "GroupChatListParams.java"


# instance fields
.field private final increaseMode:Z

.field private final mOwnImsi:Ljava/lang/String;

.field private final version:I


# direct methods
.method public constructor <init>(IZLjava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;->version:I

    .line 21
    iput-boolean p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;->increaseMode:Z

    .line 22
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;->mOwnImsi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIncreaseMode()Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;->increaseMode:Z

    return p0
.end method

.method public getOwnImsi()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;->mOwnImsi:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    .line 26
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;->version:I

    return p0
.end method
