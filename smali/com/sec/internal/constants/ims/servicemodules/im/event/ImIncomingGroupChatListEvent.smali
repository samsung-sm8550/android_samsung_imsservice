.class public Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent;
.super Ljava/lang/Object;
.source "ImIncomingGroupChatListEvent.java"


# instance fields
.field public entryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public mOwnImsi:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent;->version:I

    .line 26
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent;->entryList:Ljava/util/List;

    .line 27
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent;->mOwnImsi:Ljava/lang/String;

    return-void
.end method
