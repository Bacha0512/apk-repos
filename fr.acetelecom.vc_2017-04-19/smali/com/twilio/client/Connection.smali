.class public interface abstract Lcom/twilio/client/Connection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/Connection$State;
    }
.end annotation


# static fields
.field public static final IncomingParameterAPIVersionKey:Ljava/lang/String; = "ApiVersion"

.field public static final IncomingParameterAccountSIDKey:Ljava/lang/String; = "AccountSid"

.field public static final IncomingParameterCallSIDKey:Ljava/lang/String; = "CallSid"

.field public static final IncomingParameterFromKey:Ljava/lang/String; = "From"

.field public static final IncomingParameterToKey:Ljava/lang/String; = "To"


# virtual methods
.method public abstract accept()V
.end method

.method public abstract disconnect()V
.end method

.method public abstract getParameters()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getState()Lcom/twilio/client/Connection$State;
.end method

.method public abstract ignore()V
.end method

.method public abstract isIncoming()Z
.end method

.method public abstract isMuted()Z
.end method

.method public abstract reject()V
.end method

.method public abstract sendDigits(Ljava/lang/String;)V
.end method

.method public abstract setConnectionListener(Lcom/twilio/client/ConnectionListener;)V
.end method

.method public abstract setMuted(Z)V
.end method
