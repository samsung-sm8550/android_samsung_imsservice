.class public abstract Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
.super Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
.source "FtMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<",
        "TT;>;>",
        "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mCancelReason:I

.field private mContentUri:Landroid/net/Uri;

.field private mCurrentStateMachineState:I

.field private mExtraFt:Z

.field private mFileDisposition:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mFileSize:J

.field private mFileTransferId:Ljava/lang/String;

.field private mInReplyToContributionId:Ljava/lang/String;

.field private mIsGroupChat:Z

.field private mIsResizable:Z

.field private mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

.field private mLooper:Landroid/os/Looper;

.field private mPlayingLength:I

.field private mResumableOptionCode:I

.field private mThumbnailPath:Ljava/lang/String;

.field private mTimeDuration:I

.field private mTransferredBytes:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmCancelReason(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mCancelReason:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContentUri(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Landroid/net/Uri;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mContentUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentStateMachineState(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mCurrentStateMachineState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmExtraFt(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mExtraFt:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFileDisposition(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mFileDisposition:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFileName(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFilePath(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFileSize(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mFileSize:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmFileTransferId(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mFileTransferId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInReplyToContributionId(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mInReplyToContributionId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGroupChat(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mIsGroupChat:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsResizable(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mIsResizable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLooper(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Landroid/os/Looper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mLooper:Landroid/os/Looper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPlayingLength(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mPlayingLength:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmResumableOptionCode(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mResumableOptionCode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmThumbnailPath(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mThumbnailPath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeDuration(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mTimeDuration:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTransferredBytes(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mTransferredBytes:J

    return-wide v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 849
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 0

    .line 978
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object p0

    return-object p0
.end method

.method public contentUri(Landroid/net/Uri;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")TT;"
        }
    .end annotation

    .line 886
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mContentUri:Landroid/net/Uri;

    .line 887
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object p0
.end method

.method public extraFt(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 906
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mExtraFt:Z

    .line 907
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object p0
.end method

.method public fileName(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 891
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mFileName:Ljava/lang/String;

    .line 892
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object p0
.end method

.method public filePath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 881
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mFilePath:Ljava/lang/String;

    .line 882
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object p0
.end method

.method public fileSize(J)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 896
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mFileSize:J

    .line 897
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object p0
.end method

.method public fileTransferId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 921
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mFileTransferId:Ljava/lang/String;

    .line 922
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object p0
.end method

.method public inReplyToConversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 926
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mInReplyToContributionId:Ljava/lang/String;

    .line 927
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object p0
.end method

.method public isGroupChat(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 951
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mIsGroupChat:Z

    .line 952
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object p0
.end method

.method public isResizable(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 946
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mIsResizable:Z

    .line 947
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object p0
.end method

.method public listener(Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;",
            ")TT;"
        }
    .end annotation

    .line 876
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    .line 877
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object p0
.end method

.method public looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            ")TT;"
        }
    .end annotation

    .line 871
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mLooper:Landroid/os/Looper;

    .line 872
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object p0
.end method

.method public setCancelReason(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 936
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mCancelReason:I

    .line 937
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object p0
.end method

.method public setFileDisposition(Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;",
            ")TT;"
        }
    .end annotation

    .line 962
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mFileDisposition:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    .line 963
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object p0
.end method

.method public setPlayingLength(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 973
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mPlayingLength:I

    .line 974
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object p0
.end method

.method public setResumableOptions(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 941
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mResumableOptionCode:I

    .line 942
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object p0
.end method

.method public setState(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 931
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mCurrentStateMachineState:I

    .line 932
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object p0
.end method

.method public thumbnailPath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 901
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mThumbnailPath:Ljava/lang/String;

    .line 902
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object p0
.end method

.method public timeDuration(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 911
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mTimeDuration:I

    .line 912
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object p0
.end method

.method public transferredBytes(J)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 916
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mTransferredBytes:J

    .line 917
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object p0
.end method
