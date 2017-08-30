.class Lcom/rami_bar/fun_call/activities/FragmentRecordings$5;
.super Ljava/lang/Object;
.source "FragmentRecordings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentRecordings;->openDialog(Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

.field final synthetic val$mDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/FragmentRecordings;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$5;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    iput-object p2, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$5;->val$mDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;

    .line 184
    .local v2, "recording":Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;
    if-nez v2, :cond_0

    .line 206
    :goto_0
    return-void

    .line 186
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$5;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    invoke-virtual {v3}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 187
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "Are you sure?"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 188
    const-string v3, "Yes"

    new-instance v4, Lcom/rami_bar/fun_call/activities/FragmentRecordings$5$1;

    invoke-direct {v4, p0, v2}, Lcom/rami_bar/fun_call/activities/FragmentRecordings$5$1;-><init>(Lcom/rami_bar/fun_call/activities/FragmentRecordings$5;Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 197
    const-string v3, "No"

    new-instance v4, Lcom/rami_bar/fun_call/activities/FragmentRecordings$5$2;

    invoke-direct {v4, p0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings$5$2;-><init>(Lcom/rami_bar/fun_call/activities/FragmentRecordings$5;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 203
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 204
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 205
    sget-object v3, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v4, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v4

    const-string v5, "delete"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v4

    const-string v5, "click"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto :goto_0
.end method
