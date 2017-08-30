.class public interface abstract Lorg/abtollc/sdk/OnInitializeListener;
.super Ljava/lang/Object;
.source "OnInitializeListener.java"

# interfaces
.implements Ljava/util/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/abtollc/sdk/OnInitializeListener$InitializeState;
    }
.end annotation


# static fields
.field public static final INITIALSZE_STATE:Ljava/lang/String; = "init_state"


# virtual methods
.method public abstract onInitializeState(Lorg/abtollc/sdk/OnInitializeListener$InitializeState;Ljava/lang/String;)V
.end method
