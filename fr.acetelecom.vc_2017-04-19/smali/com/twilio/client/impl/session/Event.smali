.class public abstract Lcom/twilio/client/impl/session/Event;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/session/Event$Type;
    }
.end annotation


# instance fields
.field private type:Lcom/twilio/client/impl/session/Event$Type;


# direct methods
.method protected constructor <init>(Lcom/twilio/client/impl/session/Event$Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twilio/client/impl/session/Event;->type:Lcom/twilio/client/impl/session/Event$Type;

    return-void
.end method


# virtual methods
.method public getType()Lcom/twilio/client/impl/session/Event$Type;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/session/Event;->type:Lcom/twilio/client/impl/session/Event$Type;

    return-object v0
.end method
