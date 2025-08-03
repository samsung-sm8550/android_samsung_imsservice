.class public Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;
.super Ljava/lang/Object;
.source "GroupChatInfoParams.java"


# instance fields
.field private final mOwnImsi:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;->mUri:Landroid/net/Uri;

    .line 22
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;->mOwnImsi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getOwnImsi()Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;->mOwnImsi:Ljava/lang/String;

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;->mUri:Landroid/net/Uri;

    return-object p0
.end method
