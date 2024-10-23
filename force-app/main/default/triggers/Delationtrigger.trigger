trigger Delationtrigger on Account (before delete) {
	Accountdeletionhandler.deletemethod(trigger.old);
}