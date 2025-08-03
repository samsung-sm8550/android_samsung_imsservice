.class public interface abstract Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/IGeolocSharingEventBroadcaster;
.super Ljava/lang/Object;
.source "IGeolocSharingEventBroadcaster.java"


# virtual methods
.method public abstract broadcastDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract broadcastGeolocSharingInvitation(Ljava/lang/String;Landroid/os/UserHandle;)V
.end method

.method public abstract broadcastGeolocSharingStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;)V
.end method

.method public abstract broadcastGeolocSharingprogress(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V
.end method
