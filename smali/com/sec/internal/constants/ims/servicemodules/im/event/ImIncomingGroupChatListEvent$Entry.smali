.class public Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;
.super Ljava/lang/Object;
.source "ImIncomingGroupChatListEvent.java"


# instance fields
.field public pConvID:Ljava/lang/String;

.field public sessionUri:Landroid/net/Uri;

.field public subject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;->sessionUri:Landroid/net/Uri;

    .line 38
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;->pConvID:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;->subject:Ljava/lang/String;

    return-void
.end method
