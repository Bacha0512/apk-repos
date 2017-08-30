.class public Lcom/rami_bar/fun_call/utiles/MyApp;
.super Lorg/abtollc/sdk/AbtoApplication;
.source "MyApp.java"


# static fields
.field public static analytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

.field public static tracker:Lcom/google/android/gms/analytics/Tracker;


# instance fields
.field private accountId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/abtollc/sdk/AbtoApplication;-><init>()V

    return-void
.end method

.method private googleAnalytics()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 59
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    sput-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->analytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    .line 60
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->analytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    const/16 v1, 0x708

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setLocalDispatchPeriod(I)V

    .line 61
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->analytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    const-string v1, "UA-42365519-1"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    sput-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    .line 62
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/Tracker;->enableExceptionReporting(Z)V

    .line 63
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    .line 64
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/Tracker;->enableAutoActivityTracking(Z)V

    .line 65
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lorg/abtollc/sdk/AbtoApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 29
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lorg/abtollc/sdk/AbtoApplication;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 36
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0}, Lorg/abtollc/sdk/AbtoApplication;->onCreate()V

    .line 21
    invoke-direct {p0}, Lcom/rami_bar/fun_call/utiles/MyApp;->googleAnalytics()V

    .line 24
    return-void
.end method
