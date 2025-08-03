.class public Lcom/sec/internal/ims/cmstore/CloudMessageProvider;
.super Landroid/content/ContentProvider;
.source "CloudMessageProvider.java"


# static fields
.field protected static final LOG_TAG:Ljava/lang/String;

.field protected static PROVIDER_NAME:Ljava/lang/String; = null

.field private static final SIM_1:I = 0x0

.field private static final SIM_2:I = 0x1

.field protected static mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister; = null

.field private static final mBufferDBInitialized:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static mDualDBRequired:Z = false

.field protected static sUriMatcher:Landroid/content/UriMatcher; = null

.field private static final simSlot2:Ljava/lang/String; = "/slot2"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 58
    const-class v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x2

    .line 59
    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    sput-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    .line 60
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDBInitialized:Ljava/util/Hashtable;

    .line 61
    const-string v1, "com.samsung.rcs.cmstore"

    sput-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    .line 62
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const/4 v2, 0x0

    .line 68
    sput-boolean v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mDualDBRequired:Z

    .line 72
    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "smsmessages/#"

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "mmspdumessage/#"

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "mmsaddrmessages/#"

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "mmspartmessages/#"

    const/4 v4, 0x6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "mmspartmessages_partid/#"

    const/16 v4, 0x8

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcschatmessage/#"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcsftmessage/#"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcsmessages/#"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "notification/#"

    const/16 v4, 0xd

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "summarytable/#"

    const/4 v4, 0x7

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "latestmessage/#"

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "allsmsmessages"

    const/16 v4, 0x1f

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "allmmspdumessage"

    const/16 v4, 0x20

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 113
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "useroptinflag"

    const/16 v4, 0x25

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "max_small_file_size"

    const/16 v4, 0x28

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "smsmessages/slot2/#"

    const/16 v4, 0x2b

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "mmspdumessage/slot2/#"

    const/16 v4, 0x2c

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "mmsaddrmessages/slot2/#"

    const/16 v4, 0x2d

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 128
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "mmspartmessages/slot2/#"

    const/16 v4, 0x2e

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "mmspartmessages_partid/slot2/#"

    const/16 v4, 0x30

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcschatmessage/slot2/#"

    const/16 v4, 0x29

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 137
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcsftmessage/slot2/#"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcsmessages/slot2/#"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 143
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcsparticipants/slot2/*"

    const/16 v4, 0x2a

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 146
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcssession/slot2/*"

    const/16 v4, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 149
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "notification/slot2/#"

    const/16 v4, 0x35

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 152
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "summarytable/slot2/#"

    const/16 v4, 0x2f

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 155
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcsmessageimdn/slot2/*"

    const/16 v4, 0x37

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 158
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "notificationimdn/slot2/*"

    const/16 v4, 0x48

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 162
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "pendingsmsmessages/slot2/*"

    const/16 v4, 0x38

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 165
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "pendingmmspdumessage/slot2/*"

    const/16 v4, 0x39

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 168
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "pendingrcschatmessage/slot2/*"

    const/16 v4, 0x3a

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 171
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "pendingrcsftmessage/slot2/*"

    const/16 v4, 0x3b

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 175
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "latestmessage/slot2/#"

    const/16 v4, 0x3e

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 179
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "allsmsmessages/slot2"

    const/16 v4, 0x3c

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 182
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "allmmspdumessage/slot2"

    const/16 v4, 0x3d

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 186
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "useroptinflag/slot2"

    const/16 v4, 0x40

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 189
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "max_small_file_size/slot2"

    const/16 v4, 0x49

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 192
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "vvmmessages/slot2/*"

    const/16 v4, 0x41

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 195
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "vvmprofile/slot2/*"

    const/16 v4, 0x44

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 198
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "vvmgreeting/slot2/*"

    const/16 v4, 0x42

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 201
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "vvmpin/slot2/*"

    const/16 v4, 0x43

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 204
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "vvmquota/slot2/*"

    const/16 v4, 0x45

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 207
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "pendingvvmmessages/slot2/*"

    const/16 v4, 0x46

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 210
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "multilinestatus/slot2/*"

    const/16 v4, 0x47

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 215
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcsparticipants/*"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 218
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "rcssession/*"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 221
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "rcsmessageimdn/*"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 224
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "notificationimdn/*"

    const/16 v3, 0x27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 227
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "vvmmessages/*"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 230
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "vvmprofile/*"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 233
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "vvmgreeting/*"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 236
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "vvmpin/*"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 238
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "vvmquota/*"

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 241
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "pendingsmsmessages/*"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 244
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "pendingmmspdumessage/*"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 247
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "pendingrcschatmessage/*"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 250
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "pendingrcsftmessage/*"

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 253
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "pendingvvmmessages/*"

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 256
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "multilinestatus/*"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 261
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "userdebugflag"

    const/16 v3, 0x63

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 263
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "userdebugstatus/*"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 266
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "migrate_success"

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 269
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "ambs_feature_ver"

    const/16 v3, 0x62

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 272
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "cms_feature_ver/*"

    const/16 v3, 0x61

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static declared-synchronized createBufferDBInstance(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 5

    const-class v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;

    monitor-enter v0

    .line 350
    :try_start_0
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    .line 351
    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createBufferDBInstance() slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mDualDBRequired: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mDualDBRequired:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    sget-object v3, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDBInitialized:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 353
    const-string v4, "createBufferDBInstance() DB not loaded"

    invoke-static {v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->setDualDBEnable(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 355
    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->initBufferDB(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 356
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 358
    :cond_0
    const-string p0, "createBufferDBInstance() already loaded"

    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private getMaxSmallFileSize(I)Landroid/database/Cursor;
    .locals 4

    .line 1035
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1036
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMaxSmallFileSize()I

    move-result p0

    int-to-long v0, p0

    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 1038
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaxSmallFileSize slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maxSmallFileSize: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    new-instance p0, Landroid/database/MatrixCursor;

    const-string p1, "max_small_file_size"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    .line 1041
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object p0
.end method

.method private getMultiLineStatus(Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 789
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 790
    const-string v3, "linenum=?"

    .line 791
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v1, 0x17

    move-object v0, p1

    .line 792
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    .line 795
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 797
    :cond_0
    const-string p2, "initsync_status"

    .line 798
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 797
    invoke-static {p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 800
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 802
    :cond_1
    :goto_0
    const-string p2, "initupload_status"

    .line 803
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 802
    invoke-static {p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 805
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    :cond_2
    const-string/jumbo p2, "syncmessage_status"

    .line 808
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 807
    invoke-static {p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 810
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_0

    goto :goto_3

    .line 792
    :goto_1
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p2

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_4
    :goto_3
    if-eqz p1, :cond_5

    .line 815
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 816
    :goto_4
    sget-object p2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IllegalArgumentException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_5
    return-object p0
.end method

.method private getNCChannelUrl(Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;)Ljava/lang/String;
    .locals 1

    .line 837
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMAChannelResURL()Ljava/lang/String;

    move-result-object p0

    .line 838
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 839
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "resUrl is null"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const-string p0, "INVALID"

    goto :goto_0

    .line 842
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "channel/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLastPathFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getNCCreationTime(Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;)Ljava/lang/String;
    .locals 4

    .line 849
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMAChannelCreateTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    .line 850
    new-instance p0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMAChannelCreateTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 851
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 852
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 849
    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private getServerConfig(Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;)Ljava/lang/String;
    .locals 2

    .line 823
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOasisServerRoot()Ljava/lang/String;

    move-result-object p0

    .line 824
    sget-object p1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "serverRoot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string p1, "dev"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 826
    const-string p0, "DEV"

    goto :goto_0

    .line 827
    :cond_0
    const-string/jumbo p1, "stg"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 828
    const-string p0, "STAGING"

    goto :goto_0

    .line 830
    :cond_1
    const-string p0, "PROD"

    :goto_0
    return-object p0
.end method

.method private getSimSlotBuff(Landroid/net/Uri;)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;
    .locals 3

    .line 430
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimSlotBuff mDualDBRequired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mDualDBRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x29

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 432
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/16 v0, 0x49

    if-gt p1, v0, :cond_1

    .line 433
    const-string p1, "getSimSlotBuff mDualDBRequired slot: 1"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    sget-boolean p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mDualDBRequired:Z

    if-eqz p0, :cond_0

    .line 435
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 p1, 0x1

    aget-object p0, p0, p1

    return-object p0

    .line 437
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    aget-object p0, p0, v2

    return-object p0

    .line 440
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    aget-object p0, p0, v2

    return-object p0
.end method

.method private static initBufferDB(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 4

    .line 363
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    .line 364
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initBufferDB() mDualDBRequired: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mDualDBRequired:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", for slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    sget-boolean v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mDualDBRequired:Z

    if-eqz v2, :cond_0

    .line 366
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-boolean v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mDualDBRequired:Z

    invoke-static {p0, v0, v2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getInstance(Landroid/content/Context;IZ)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    move-result-object p0

    aput-object p0, v1, v0

    .line 367
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->load()V

    goto :goto_1

    .line 370
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDBInitialized:Ljava/util/Hashtable;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 373
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-boolean v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mDualDBRequired:Z

    invoke-static {p0, v2, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getInstance(Landroid/content/Context;IZ)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    move-result-object p0

    aput-object p0, v0, v2

    .line 374
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    aget-object p0, p0, v2

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->load()V

    goto :goto_1

    .line 371
    :cond_2
    :goto_0
    const-string p0, "initBufferDB() DB already loaded for single DB Case"

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private needToResetMcsData(ILjava/lang/String;)Z
    .locals 2

    .line 974
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 975
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 979
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    const-string p1, "mcs_url"

    const-string v0, ""

    .line 980
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValueOfUserDebug(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 981
    sget-object p1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private removeCoTag(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 9

    const/4 p0, 0x0

    if-eqz p1, :cond_9

    .line 386
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 389
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 390
    const-string v1, "group_cotag"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 391
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x0

    .line 394
    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 395
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 396
    array-length v3, v0

    .line 398
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 400
    :cond_2
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    move v5, v1

    :goto_0
    if-ge v5, v3, :cond_7

    .line 403
    aget-object v6, v0, v5

    .line 404
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 405
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getType(I)I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_5

    const/4 v8, 0x3

    if-eq v7, v8, :cond_4

    const/4 v8, 0x4

    if-eq v7, v8, :cond_3

    .line 420
    invoke-virtual {v4, p0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 417
    :cond_3
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 414
    :cond_4
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 411
    :cond_5
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 408
    :cond_6
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 424
    :cond_7
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_8
    return-object v2

    :cond_9
    :goto_2
    return-object p0
.end method

.method private static setDualDBEnable(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 1

    .line 340
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 341
    sget-object v0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 345
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "setDualDBEnable() non ATT&T/TMOUS case"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 342
    :cond_1
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "setDualDBEnable() mDualDBRequired set true for ATT&T/TMOUS case"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 343
    sput-boolean p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mDualDBRequired:Z

    :goto_1
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 278
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->getSimSlotBuff(Landroid/net/Uri;)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 282
    const-string p0, "delete: buffer db is not initialized"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 285
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x7

    .line 288
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x6

    .line 313
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x5

    .line 318
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x4

    .line 308
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x3

    .line 303
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x2

    .line 298
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x1

    .line 293
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .line 335
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "insert "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 1

    .line 381
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "onCreate()"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 988
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 991
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "URI invalid. Use an id-based URI only."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 995
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 996
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a

    if-ne v0, v1, :cond_2

    .line 1003
    const-string v0, "_data"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    .line 1005
    :cond_2
    const-string v0, "file_path"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    :goto_1
    if-ltz v0, :cond_3

    .line 1007
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 1009
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_9

    if-eqz v0, :cond_8

    .line 1014
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1016
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1017
    const-string/jumbo p1, "w"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1019
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1021
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1024
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_3
    const/high16 p1, 0x20000000

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    .line 1028
    :goto_4
    const-string/jumbo v0, "r"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/high16 v0, 0x10000000

    or-int/2addr p1, v0

    .line 1029
    :cond_6
    const-string v0, "+"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/high16 p2, 0x2000000

    or-int/2addr p1, p2

    .line 1030
    :cond_7
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 1012
    :cond_8
    :try_start_2
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "File path is null"

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1010
    :cond_9
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple items at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 998
    :cond_a
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No entry for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    if-eqz p0, :cond_b

    .line 995
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_6
    throw p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 447
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "query "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->getSimSlotBuff(Landroid/net/Uri;)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    move-result-object v4

    const/4 v3, 0x0

    if-nez v4, :cond_0

    .line 453
    const-string/jumbo v0, "query: buffer db is not initialized"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 456
    :cond_0
    sget-object v5, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, v2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_f

    const/16 v7, 0xf

    if-eq v5, v7, :cond_e

    const/16 v7, 0x35

    if-eq v5, v7, :cond_f

    const-string v10, "com.samsung.android.messaging"

    const/4 v6, 0x1

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    const/4 v7, 0x0

    packed-switch v5, :pswitch_data_2

    const/4 v8, 0x3

    packed-switch v5, :pswitch_data_3

    const-string/jumbo v9, "opt_in_flag"

    packed-switch v5, :pswitch_data_4

    packed-switch v5, :pswitch_data_5

    packed-switch v5, :pswitch_data_6

    packed-switch v5, :pswitch_data_7

    const-string/jumbo v9, "version_num"

    const-string v10, ""

    packed-switch v5, :pswitch_data_8

    goto/16 :goto_5

    .line 671
    :pswitch_0
    new-instance v5, Landroid/database/MatrixCursor;

    const-string v16, "init_upload_status"

    const-string/jumbo v17, "sync_message_status"

    const-string/jumbo v11, "server_config"

    const-string v12, "notification_channel_url"

    const-string v13, "notification_channel_creation_time"

    const-string v14, "notification_channel_lifetime"

    const-string v15, "init_download_status"

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 673
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 674
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USER_DEBUG_STATUS slot "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    sget-object v9, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_1

    .line 711
    invoke-virtual {v5}, Landroid/database/MatrixCursor;->close()V

    return-object v3

    .line 678
    :cond_1
    :try_start_1
    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_2

    .line 711
    invoke-virtual {v5}, Landroid/database/MatrixCursor;->close()V

    return-object v3

    :cond_2
    if-nez v2, :cond_3

    .line 683
    :try_start_2
    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_2

    :cond_3
    if-ne v2, v6, :cond_6

    .line 685
    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v9

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v11

    if-ne v9, v11, :cond_4

    .line 686
    const-string/jumbo v0, "only single sim"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 711
    invoke-virtual {v5}, Landroid/database/MatrixCursor;->close()V

    return-object v3

    .line 689
    :cond_4
    :try_start_3
    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    .line 695
    :goto_0
    invoke-virtual {v5}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 696
    invoke-direct {v0, v1}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->getServerConfig(Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 697
    invoke-direct {v0, v1}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->getNCChannelUrl(Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 698
    invoke-direct {v0, v1}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->getNCCreationTime(Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 699
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMAChannelLifeTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 700
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->getMultiLineStatus(Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 701
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v8, :cond_5

    .line 702
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 703
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const/4 v1, 0x2

    .line 704
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 706
    :cond_5
    invoke-virtual {v2, v10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 707
    invoke-virtual {v2, v10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 708
    invoke-virtual {v2, v10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 711
    :goto_1
    invoke-virtual {v5}, Landroid/database/MatrixCursor;->close()V

    move-object v3, v5

    goto/16 :goto_5

    .line 692
    :cond_6
    :try_start_4
    const-string v0, "invalid slot selected"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 711
    invoke-virtual {v5}, Landroid/database/MatrixCursor;->close()V

    return-object v3

    .line 671
    :goto_2
    :try_start_5
    invoke-virtual {v5}, Landroid/database/MatrixCursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1

    .line 652
    :pswitch_1
    const-string v0, "USER_DEBUG_FLAG"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 654
    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->initUserDebug()V

    .line 656
    :cond_7
    new-instance v3, Landroid/database/MatrixCursor;

    const-string v10, "mcs_url"

    const-string/jumbo v11, "oasis_version"

    const-string v4, "AMBS_DEBUG"

    const-string v5, "app_id"

    const-string v6, "cps_host_name"

    const-string v7, "auth_host_name"

    const-string/jumbo v8, "retry_time"

    const-string v9, "nc_host_name"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 658
    invoke-virtual {v3}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 659
    sget-boolean v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 660
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->APP_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 661
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->CPS_HOST_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 662
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->ACMS_HOST_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 663
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->debugRetryTimeLine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 664
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->DEFAULT_PRODUCT_NC_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 665
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_MCS_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 666
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_OASIS_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_5

    .line 750
    :pswitch_2
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->supportSignedBinary()Z

    move-result v0

    .line 751
    new-instance v3, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "version_desc"

    filled-new-array {v9, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 752
    invoke-virtual {v3}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 753
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    if-eqz v0, :cond_10

    .line 755
    const-string/jumbo v0, "sbsms"

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_5

    .line 760
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 762
    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 763
    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    .line 764
    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getClientVersion(I)Ljava/lang/String;

    move-result-object v10

    .line 766
    :cond_8
    new-instance v3, Landroid/database/MatrixCursor;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 767
    invoke-virtual {v3}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 768
    invoke-virtual {v0, v10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_5

    .line 780
    :pswitch_4
    invoke-direct {v0, v6}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->getMaxSmallFileSize(I)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_5

    .line 739
    :pswitch_5
    const-string v0, "OPT_IN_STATUS2"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 742
    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->ifSteadyState()Z

    move-result v7

    .line 744
    :cond_9
    new-instance v3, Landroid/database/MatrixCursor;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 745
    invoke-virtual {v3}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 746
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_5

    .line 777
    :pswitch_6
    invoke-direct {v0, v7}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->getMaxSmallFileSize(I)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_5

    :pswitch_7
    const/16 v5, 0xd

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 773
    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_5

    .line 715
    :pswitch_8
    const-string v0, "OPT_IN_STATUS1"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 718
    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->ifSteadyState()Z

    move-result v7

    .line 720
    :cond_a
    new-instance v3, Landroid/database/MatrixCursor;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 721
    invoke-virtual {v3}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 722
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_5

    .line 568
    :pswitch_9
    const-string v5, "_bufferdbid= ?"

    const/16 v3, 0x24

    move-object v0, v4

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object v4, v5

    move-object/from16 v5, p5

    .line 569
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_5

    .line 727
    :pswitch_a
    const-string v0, "DATABASE MIGRATE FLAG"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 730
    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMigrateSuccessFlag()Z

    move-result v7

    .line 732
    :cond_b
    new-instance v3, Landroid/database/MatrixCursor;

    const-string v0, "migrate_success"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 733
    invoke-virtual {v3}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 734
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_5

    .line 641
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LASTEST Message DB index = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const-string v1, "MAX(_bufferdbid)"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    if-eq v0, v6, :cond_c

    if-eq v0, v8, :cond_c

    const/4 v2, 0x4

    if-eq v0, v2, :cond_c

    const/16 v2, 0x11

    if-ne v0, v2, :cond_10

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 p0, v4

    move/from16 p1, v0

    move-object/from16 p2, v5

    move-object/from16 p3, v2

    move-object/from16 p4, v1

    move-object/from16 p5, v3

    .line 648
    invoke-virtual/range {p0 .. p5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_5

    :pswitch_c
    const/16 v5, 0x20

    const/4 v9, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 636
    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_5

    :pswitch_d
    const/16 v5, 0x1f

    const/4 v9, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 628
    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 630
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 631
    invoke-direct {v0, v3}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->removeCoTag(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_5

    .line 620
    :pswitch_e
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 621
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 622
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const/16 v5, 0x11

    .line 623
    const-string/jumbo v7, "syncdirection=? OR syncdirection=?"

    move-object/from16 v6, p2

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_5

    .line 609
    :pswitch_f
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 610
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 611
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 612
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x1

    .line 613
    const-string/jumbo v7, "syncdirection=? OR syncdirection=? OR is_filetransfer=?"

    move-object/from16 v6, p2

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_5

    .line 597
    :pswitch_10
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 598
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 599
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 600
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x1

    .line 601
    const-string/jumbo v7, "syncdirection=? OR syncdirection=? OR is_filetransfer=?"

    move-object/from16 v6, p2

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_5

    .line 586
    :pswitch_11
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 587
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 588
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x4

    .line 589
    const-string/jumbo v7, "syncdirection=? OR syncdirection=?"

    move-object/from16 v6, p2

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_5

    .line 576
    :pswitch_12
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 577
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 578
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x3

    .line 579
    const-string/jumbo v7, "syncdirection=? OR syncdirection=?"

    move-object/from16 v6, p2

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_5

    .line 538
    :pswitch_13
    const-string v5, "linenum= ?"

    const/16 v3, 0x17

    move-object v0, v4

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object v4, v5

    move-object/from16 v5, p5

    .line 539
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_5

    .line 550
    :pswitch_14
    const-string v5, "_bufferdbid= ?"

    const/16 v3, 0x14

    move-object v0, v4

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object v4, v5

    move-object/from16 v5, p5

    .line 551
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_5

    .line 562
    :pswitch_15
    const-string v5, "_bufferdbid= ?"

    const/16 v3, 0x13

    move-object v0, v4

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object v4, v5

    move-object/from16 v5, p5

    .line 563
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_5

    .line 556
    :pswitch_16
    const-string v5, "_bufferdbid= ?"

    const/16 v3, 0x12

    move-object v0, v4

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object v4, v5

    move-object/from16 v5, p5

    .line 557
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_5

    .line 544
    :pswitch_17
    const-string v5, "_bufferdbid= ?"

    const/16 v3, 0x11

    move-object v0, v4

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object v4, v5

    move-object/from16 v5, p5

    .line 545
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_5

    .line 524
    :pswitch_18
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 525
    const-string v0, "chat_id= ?"

    move-object v5, v0

    goto :goto_4

    :cond_d
    move-object/from16 v5, p3

    :goto_4
    const/16 v3, 0xa

    move-object v0, v4

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object v4, v5

    move-object/from16 v5, p5

    .line 527
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_5

    .line 510
    :pswitch_19
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 511
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RCS_MESSAGE_ID bufferDB = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 512
    invoke-virtual {v4, v6, v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_5

    .line 504
    :pswitch_1a
    const-string v5, "_bufferdbid= ?"

    const/4 v3, 0x6

    move-object v0, v4

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object v4, v5

    move-object/from16 v5, p5

    .line 505
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_5

    .line 459
    :pswitch_1b
    const-string v5, "_bufferdbid= ?"

    const/4 v3, 0x7

    move-object v0, v4

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object v4, v5

    move-object/from16 v5, p5

    .line 460
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_5

    .line 492
    :pswitch_1c
    const-string v5, "mid= ?"

    const/4 v3, 0x6

    move-object v0, v4

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object v4, v5

    move-object/from16 v5, p5

    .line 493
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_5

    .line 498
    :pswitch_1d
    const-string v5, "msg_id= ?"

    const/4 v3, 0x5

    move-object v0, v4

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object v4, v5

    move-object/from16 v5, p5

    .line 499
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_5

    .line 486
    :pswitch_1e
    const-string v5, "_bufferdbid= ?"

    const/4 v3, 0x4

    move-object v0, v4

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object v4, v5

    move-object/from16 v5, p5

    .line 487
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_5

    .line 477
    :pswitch_1f
    const-string v5, "_bufferdbid= ?"

    const/4 v3, 0x3

    move-object v1, v4

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p5

    .line 478
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 480
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 481
    invoke-direct {v0, v3}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->removeCoTag(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_5

    .line 471
    :pswitch_20
    const-string v5, "chat_id= ?"

    const/4 v3, 0x2

    move-object v0, v4

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object v4, v5

    move-object/from16 v5, p5

    .line 472
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_5

    .line 465
    :pswitch_21
    const-string v5, "_bufferdbid= ?"

    const/4 v3, 0x1

    move-object v0, v4

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object v4, v5

    move-object/from16 v5, p5

    .line 466
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_5

    .line 532
    :cond_e
    :pswitch_22
    const-string v5, "imdn_message_id= ?"

    const/4 v3, 0x1

    move-object v0, v4

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p2

    move-object v4, v5

    move-object/from16 v5, p5

    .line 533
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_5

    .line 517
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RCS_MESSAGES_IMDN bufferDB = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 519
    invoke-virtual {v4, v6, v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object v3

    :cond_10
    :goto_5
    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x17
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1f
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x23
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x27
        :pswitch_7
        :pswitch_6
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x37
        :pswitch_22
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x40
        :pswitch_5
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_9
        :pswitch_e
        :pswitch_13
        :pswitch_7
        :pswitch_4
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x61
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    .line 859
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->getSimSlotBuff(Landroid/net/Uri;)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 863
    const-string/jumbo p0, "update: buffer db is not initialized"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 866
    :cond_0
    sget-object v3, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/16 v4, 0x17

    if-eq v3, v4, :cond_9

    const/16 v5, 0x47

    if-eq v3, v5, :cond_9

    const/16 p1, 0x63

    const/4 v4, 0x1

    if-eq v3, p1, :cond_1

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_3

    :pswitch_0
    const/4 p0, 0x7

    .line 869
    invoke-virtual {v1, p0, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_3

    :pswitch_1
    const/4 p0, 0x6

    .line 896
    invoke-virtual {v1, p0, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_3

    :pswitch_2
    const/4 p0, 0x5

    .line 902
    invoke-virtual {v1, p0, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_3

    :pswitch_3
    const/4 p0, 0x4

    .line 890
    invoke-virtual {v1, p0, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_3

    :pswitch_4
    const/4 p0, 0x3

    .line 885
    invoke-virtual {v1, p0, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_3

    :pswitch_5
    const/4 p0, 0x2

    .line 879
    invoke-virtual {v1, p0, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_3

    .line 874
    :pswitch_6
    invoke-virtual {v1, v4, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_3

    .line 914
    :cond_1
    const-string p1, "AMBS_DEBUG"

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    .line 915
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Debug enabled?: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    move-object p4, p1

    goto :goto_0

    :cond_2
    const-string/jumbo p4, "null"

    :goto_0
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 916
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 917
    const-string p1, "app_id"

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 918
    const-string p3, "cps_host_name"

    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 919
    const-string p4, "auth_host_name"

    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 920
    const-string/jumbo v0, "retry_time"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 921
    const-string v1, "nc_host_name"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 922
    const-string v3, "mcs_url"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_MCS_URL:Ljava/lang/String;

    .line 924
    invoke-static {p1, p4, p3, v1}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->setDebugHttps(Z)V

    .line 927
    sput-boolean v4, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    if-eqz v0, :cond_4

    .line 929
    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->setRetryTimeLine(Ljava/lang/String;)V

    goto :goto_1

    .line 932
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->initDefault()V

    .line 933
    sput-boolean v2, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    .line 934
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->initRetryTimeLine()V

    .line 935
    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->setDebugHttps(Z)V

    .line 936
    const-string p1, "https://rapi.rcsoasis.kr"

    sput-object p1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_MCS_URL:Ljava/lang/String;

    .line 939
    :cond_4
    :goto_1
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p1

    .line 940
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    if-nez p2, :cond_5

    return v2

    .line 943
    :cond_5
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOasisServerVersion()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_OASIS_VERSION:Ljava/lang/String;

    move p1, v2

    .line 946
    :goto_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result p2

    if-ge p1, p2, :cond_a

    .line 947
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 948
    sget-object p2, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_MCS_URL:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->needToResetMcsData(ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 949
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getProvisionWorkFlow()Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->resetMcsData()V

    .line 950
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getProvisionWorkFlow()Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->clearWorkflow()V

    .line 951
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result p2

    .line 952
    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 953
    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getProvisionWorkFlow()Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->resetMcsData()V

    .line 954
    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getProvisionWorkFlow()Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->clearWorkflow()V

    .line 956
    :cond_6
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserDebug()V

    .line 958
    :cond_7
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getNetAPIWorkingStatusController()Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->resetMcsRestartReceiver()V

    .line 960
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->supportSignedBinary()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 961
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getNetAPIWorkingStatusController()Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->resetDataReceiver()V

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 909
    :cond_9
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 910
    const-string p1, "linenum= ?"

    invoke-virtual {v1, v4, p2, p1, p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    :cond_a
    :goto_3
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
