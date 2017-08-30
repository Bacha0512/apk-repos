.class Lnet/pubnative/URLDriller$4;
.super Ljava/lang/Object;
.source "URLDriller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/URLDriller;->invokeFinish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/URLDriller;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/pubnative/URLDriller;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/pubnative/URLDriller;

    .prologue
    .line 224
    iput-object p1, p0, Lnet/pubnative/URLDriller$4;->this$0:Lnet/pubnative/URLDriller;

    iput-object p2, p0, Lnet/pubnative/URLDriller$4;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lnet/pubnative/URLDriller$4;->this$0:Lnet/pubnative/URLDriller;

    iget-object v0, v0, Lnet/pubnative/URLDriller;->mListener:Lnet/pubnative/URLDriller$Listener;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lnet/pubnative/URLDriller$4;->this$0:Lnet/pubnative/URLDriller;

    iget-object v0, v0, Lnet/pubnative/URLDriller;->mListener:Lnet/pubnative/URLDriller$Listener;

    iget-object v1, p0, Lnet/pubnative/URLDriller$4;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnet/pubnative/URLDriller$Listener;->onURLDrillerFinish(Ljava/lang/String;)V

    .line 232
    :cond_0
    iget-object v0, p0, Lnet/pubnative/URLDriller$4;->this$0:Lnet/pubnative/URLDriller;

    const/4 v1, 0x0

    iput-object v1, v0, Lnet/pubnative/URLDriller;->mListener:Lnet/pubnative/URLDriller$Listener;

    .line 233
    return-void
.end method
