.class Lcom/rami_bar/fun_call/activities/ActivityDialer$2;
.super Ljava/lang/Object;
.source "ActivityDialer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/ActivityDialer;->handleInCallSounds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/ActivityDialer;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/ActivityDialer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/ActivityDialer;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer$2;->this$0:Lcom/rami_bar/fun_call/activities/ActivityDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Lcom/rami_bar/fun_call/objects/send/JsonSendSounds;

    invoke-direct {v0}, Lcom/rami_bar/fun_call/objects/send/JsonSendSounds;-><init>()V

    .line 319
    .local v0, "send":Lcom/rami_bar/fun_call/objects/send/JsonSendSounds;
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer$2;->this$0:Lcom/rami_bar/fun_call/activities/ActivityDialer;

    invoke-static {v1}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getEmail()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rami_bar/fun_call/objects/send/JsonSendSounds;->email:Ljava/lang/String;

    .line 320
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rami_bar/fun_call/objects/InCallSounds;

    iget-object v1, v1, Lcom/rami_bar/fun_call/objects/InCallSounds;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/rami_bar/fun_call/objects/send/JsonSendSounds;->sound_id:Ljava/lang/String;

    .line 321
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer$2;->this$0:Lcom/rami_bar/fun_call/activities/ActivityDialer;

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityDialer;->sendInCallSounds(Lcom/rami_bar/fun_call/objects/send/JsonSendSounds;)V
    invoke-static {v1, v0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->access$100(Lcom/rami_bar/fun_call/activities/ActivityDialer;Lcom/rami_bar/fun_call/objects/send/JsonSendSounds;)V

    .line 322
    sget-object v2, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v3, "Sounds"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rami_bar/fun_call/objects/InCallSounds;

    iget-object v1, v1, Lcom/rami_bar/fun_call/objects/InCallSounds;->text:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 323
    return-void
.end method
